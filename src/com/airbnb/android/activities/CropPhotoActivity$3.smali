.class Lcom/airbnb/android/activities/CropPhotoActivity$3;
.super Ljava/lang/Object;
.source "CropPhotoActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/CropPhotoActivity;->uploadPhoto(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/SetProfilePhoto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/CropPhotoActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/CropPhotoActivity;)V
    .registers 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/airbnb/android/activities/CropPhotoActivity$3;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity$3;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    # invokes: Lcom/airbnb/android/activities/CropPhotoActivity;->hideProgressSpinner()V
    invoke-static {v0}, Lcom/airbnb/android/activities/CropPhotoActivity;->access$000(Lcom/airbnb/android/activities/CropPhotoActivity;)V

    .line 156
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity$3;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/CropPhotoActivity;->setResult(I)V

    .line 157
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity$3;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CropPhotoActivity;->finish()V

    .line 158
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/SetProfilePhoto;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/SetProfilePhoto;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/airbnb/android/activities/CropPhotoActivity$3;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    # invokes: Lcom/airbnb/android/activities/CropPhotoActivity;->hideProgressSpinner()V
    invoke-static {v1}, Lcom/airbnb/android/activities/CropPhotoActivity;->access$000(Lcom/airbnb/android/activities/CropPhotoActivity;)V

    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v0, "returnIntent":Landroid/content/Intent;
    const-string/jumbo v1, "photo_url"

    iget-object v2, p1, Lcom/airbnb/android/requests/SetProfilePhoto;->user:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getPictureUrlLarge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/airbnb/android/activities/CropPhotoActivity$3;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/activities/CropPhotoActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    iget-object v1, p0, Lcom/airbnb/android/activities/CropPhotoActivity$3;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CropPhotoActivity;->finish()V

    .line 167
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 151
    check-cast p1, Lcom/airbnb/android/requests/SetProfilePhoto;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/CropPhotoActivity$3;->onResponse(Lcom/airbnb/android/requests/SetProfilePhoto;)V

    return-void
.end method
