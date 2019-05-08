var gulp = require('gulp')
var styleguide = require('sc5-styleguide')
var sass = require('gulp-sass')
var sourcePath = 'src'
var staticPath = 'static'
var styleSourcePath = sourcePath + '/scss'
var scssWild = styleSourcePath + '/**/*.scss'
var scssRoot = styleSourcePath + '/main.scss'
var styleguideTmpPath = 'styleguide'
var isProdOrCommit = global.production || !!~process.argv.indexOf('commit')
gulp.task('sgimages', function () {
  gulp.src(staticPath + '/img/**.*')
    .pipe(gulp.dest(styleguideTmpPath + '/static/img'))
})
gulp.task('sgsvg', function () {
  gulp.src(staticPath + '/symbol/svg/sprite.symbol.svg')
    .pipe(gulp.dest(styleguideTmpPath + '/static/symbol/svg'))
})
gulp.task('styleguide:generate', function () {
  return gulp.src(scssWild)
    .pipe(styleguide.generate({
      title: 'Styleguide',
      server: !isProdOrCommit,
      rootPath: styleguideTmpPath,
      overviewPath: 'README.md',
      showReferenceNumbers: true,
      appRoot: isProdOrCommit ? '/styleguide' : ''
    }))
    .pipe(gulp.dest(styleguideTmpPath))
})
gulp.task('styleguide:applystyles', function () {
  return gulp.src(scssRoot)
    .pipe(sass({
      errLogToConsole: true
    }))
    .pipe(styleguide.applyStyles())
    .pipe(gulp.dest(styleguideTmpPath))
})
gulp.task('styleguidewatch', ['styleguide'], function () {
  // Start watching changes and update styleguide whenever changes are detected
  // Styleguide automatically detects existing server instance
  gulp.watch([scssWild], ['styleguide'])
})
gulp.task('styleguide', ['styleguide:generate', 'styleguide:applystyles', 'sgimages', 'sgsvg'])
