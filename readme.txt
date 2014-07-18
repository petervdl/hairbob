
Use  appt in  your sdk build tools to look at a specific XML file, like this:

1.   find the pathname to the XML resource, by tracing down through res directory.

2.   reference the apk name, and the pathname, like this:

  sdk/build-tools/android-4.4W/aapt d xmltree   hairbob.apk   res/layout/activity_main.xml

    that command give the output below (after the next 4 lines)

N == name
E == Element
A == Attribute

N: android=http://schemas.android.com/apk/res/android
 E: android.support.v4.widget.DrawerLayout (line=1)
   A: android:id(0x010100d0)=@0x7f080037
   A: android:layout_width(0x010100f4)=(type 0x10)0xffffffff
   A: android:layout_height(0x010100f5)=(type 0x10)0xffffffff
   E: FrameLayout (line=6)
     A: android:id(0x010100d0)=@0x7f080025
     A: android:layout_width(0x010100f4)=(type 0x10)0xffffffff
     A: android:layout_height(0x010100f5)=(type 0x10)0xffffffff
   E: FrameLayout (line=11)
     A: android:layout_gravity(0x010100b3)=(type 0x11)0x800003
     A: android:id(0x010100d0)=@0x7f080038
     A: android:layout_width(0x010100f4)=(type 0x5)0x10e01
     A: android:layout_height(0x010100f5)=(type 0x10)0xffffffff
