.class Lcom/airbnb/android/activities/OfficialIdActivity$3;
.super Ljava/lang/Object;
.source "OfficialIdActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/OfficialIdActivity;->uploadImages(Ljava/io/File;Ljava/io/File;)V
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
        "Lcom/airbnb/android/requests/OfficialIdUploadRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/OfficialIdActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/OfficialIdActivity;)V
    .registers 2

    .prologue
    .line 389
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity$3;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 403
    # getter for: Lcom/airbnb/android/activities/OfficialIdActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Did not upload successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$3;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    # getter for: Lcom/airbnb/android/activities/OfficialIdActivity;->mDialogFragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-static {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$800(Lcom/airbnb/android/activities/OfficialIdActivity;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 406
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$3;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    # invokes: Lcom/airbnb/android/activities/OfficialIdActivity;->displayError()V
    invoke-static {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$900(Lcom/airbnb/android/activities/OfficialIdActivity;)V

    .line 407
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$3;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 408
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/OfficialIdUploadRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/OfficialIdUploadRequest;

    .prologue
    .line 393
    # getter for: Lcom/airbnb/android/activities/OfficialIdActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Successful upload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity$3;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    # getter for: Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;
    invoke-static {v2}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$300(Lcom/airbnb/android/activities/OfficialIdActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p1}, Lcom/airbnb/android/requests/OfficialIdUploadRequest;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 396
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$3;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    iget-object v1, p1, Lcom/airbnb/android/requests/OfficialIdUploadRequest;->scanReference:Ljava/lang/String;

    # setter for: Lcom/airbnb/android/activities/OfficialIdActivity;->mScanReferenceId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$602(Lcom/airbnb/android/activities/OfficialIdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$3;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    # invokes: Lcom/airbnb/android/activities/OfficialIdActivity;->verifyUploadedIdStatus()V
    invoke-static {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$700(Lcom/airbnb/android/activities/OfficialIdActivity;)V

    .line 399
    :cond_33
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 389
    check-cast p1, Lcom/airbnb/android/requests/OfficialIdUploadRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/OfficialIdActivity$3;->onResponse(Lcom/airbnb/android/requests/OfficialIdUploadRequest;)V

    return-void
.end method
