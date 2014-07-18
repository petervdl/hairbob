.class Lcom/airbnb/android/activities/CropPhotoActivity$2;
.super Ljava/lang/Object;
.source "CropPhotoActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/CropPhotoActivity;->initGLSurfaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/CropPhotoActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/CropPhotoActivity;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/airbnb/android/activities/CropPhotoActivity$2;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 129
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 125
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v2, 0x0

    .line 116
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 117
    .local v0, "params":[I
    const/16 v1, 0xd33

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 118
    iget-object v1, p0, Lcom/airbnb/android/activities/CropPhotoActivity$2;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    aget v2, v0, v2

    # setter for: Lcom/airbnb/android/activities/CropPhotoActivity;->mGLMaxTextureSize:I
    invoke-static {v1, v2}, Lcom/airbnb/android/activities/CropPhotoActivity;->access$302(Lcom/airbnb/android/activities/CropPhotoActivity;I)I

    .line 120
    iget-object v1, p0, Lcom/airbnb/android/activities/CropPhotoActivity$2;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    # invokes: Lcom/airbnb/android/activities/CropPhotoActivity;->scalePhoto()V
    invoke-static {v1}, Lcom/airbnb/android/activities/CropPhotoActivity;->access$400(Lcom/airbnb/android/activities/CropPhotoActivity;)V

    .line 121
    return-void
.end method
