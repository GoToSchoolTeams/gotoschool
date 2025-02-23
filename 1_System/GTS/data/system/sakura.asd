@loadcell
@loop
;
@macro name=copyone
@copy dx=0 dy=0 sx=%x sy=0 sw=60 sh=60
@wait time=100
@endmacro
;
*start
@copyone x=0
@copyone x=60
@copyone x=120
@copyone x=180
@copyone x=240
@copyone x=300
@copyone x=360
@copyone x=420
@copyone x=480
@copyone x=540
@copyone x=600
@copyone x=660
@copyone x=720
@copyone x=780
@copyone x=840
@copyone x=900
@copyone x=960
@copyone x=1020
@copyone x=1080

@jump target=*start
