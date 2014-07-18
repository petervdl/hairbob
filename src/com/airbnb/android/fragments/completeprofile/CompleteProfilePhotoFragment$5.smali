.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$5;
.super Ljava/lang/Object;
.source "CompleteProfilePhotoFragment.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->initGLSurfaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;)V
    .registers 2

    .prologue
    .line 294
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$5;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 313
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 309
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v2, 0x0

    .line 302
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 303
    .local v0, "params":[I
    const/16 v1, 0xd33

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 304
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$5;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    aget v2, v0, v2

    # setter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mGLMaxTextureSize:I
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->access$302(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;I)I

    .line 305
    return-void
.end method
