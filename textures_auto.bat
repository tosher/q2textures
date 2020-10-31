@echo off

set textures_dir=pak99_textures\textures


set texture=ceil1_1.png
set src_texture_path=e1u1\%texture%
set dirs=e1u2 e1u3 e2u1 e2u2 e2u3 e3u1 e3u3
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


set texture=ceil1_2.png
set src_texture_path=e1u1\%texture%
set dirs=e1u3 e2u2 e2u3 e3u1 e3u2 e3u3
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


set texture=ceil1_3.png
set src_texture_path=e1u1\%texture%
set dirs=e1u2 e1u3 e2u1 e2u2 e2u3 e3u1 e3u3
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


set texture=ceil1_4.png
set src_texture_path=e1u1\%texture%
set dirs=e1u2 e1u3 e2u2 e2u3 e3u1 e3u2 e3u3
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)
copy /Y %textures_dir%\%src_texture_path% %textures_dir%\qwal\light3_7.png


set texture=ceil1_5.png
set src_texture_path=e1u2\%texture%
set dirs=e1u3 e2u2 e2u3 e3u1 e3u3
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


set texture=ceil1_6.png
set src_texture_path=e1u3\%texture%
set dirs=e2u2 e2u3 e3u1 e3u3
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


set texture=ceil1_7.png
set src_texture_path=e1u1\%texture%
set dirs=e1u2 e1u3 e2u3 e3u1
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


set texture=ceil1_8.png
set src_texture_path=e1u1\%texture%
set dirs=e1u2 e1u3 e2u2 e2u3 e3u1 e3u2 e3u3
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


rem NOTE: ceil1_11.png - e2u3 only


set texture=ceil1_13.png
set src_texture_path=e2u3\%texture%
set dirs=e3u1 e3u3
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)
copy /Y %textures_dir%\%src_texture_path% %textures_dir%\rune\light3_8a.png



set texture=ceil1_14.png
set src_texture_path=e2u3\%texture%
set dirs=e3u1
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


set texture=ceil1_16.png
set src_texture_path=e1u3\%texture%
set dirs=e3u2
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


rem NOTE: ceil1_17.png - e1u3 only


set texture=ceil1_22.png
set src_texture_path=e1u2\%texture%
set dirs=e2u3 e3u1
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


set texture=ceil1_24.png
set src_texture_path=e3u1\%texture%
set dirs=e3u3
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


set texture=ceil1_25.png
set src_texture_path=e1u2\%texture%
set dirs=e3u1
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


rem NOTE: ceil1_27.png - e3u3 only


set texture=ceil1_28.png
set src_texture_path=e1u1\%texture%
set dirs=e2u3 e3u1 e3u2
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


set texture=plite1_1.png
set src_texture_path=e1u1\%texture%
set dirs=e1u3
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


set texture=plite1_3.png
set src_texture_path=e1u1\%texture%
set dirs=e1u3
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)


set texture=baslt3_1.png
set src_texture_path=e1u1\%texture%
set dirs=e3u3
for /d %%i in (%dirs%) do (
  copy /Y %textures_dir%\%src_texture_path% %textures_dir%\%%i\%texture%
)

