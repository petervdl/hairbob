.class Lcom/airbnb/android/activities/CompleteProfileActivity$2;
.super Ljava/lang/Object;
.source "CompleteProfileActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/CompleteProfileActivity;->sendEmailConfirmationCode()V
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
        "Lcom/airbnb/android/requests/SendEmailConfirmationCodeRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/CompleteProfileActivity;)V
    .registers 2

    .prologue
    .line 421
    iput-object p1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity$2;->this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity$2;->this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->displayLoaderFrame(Z)V

    .line 434
    const v0, 0x7f0e01a7

    const v1, 0x7f0e01a8

    const v2, 0x7f0e0563

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity$2;->this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "email_verification_failed"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/SendEmailConfirmationCodeRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/SendEmailConfirmationCodeRequest;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity$2;->this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->displayLoaderFrame(Z)V

    .line 426
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity$2;->this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;

    # getter for: Lcom/airbnb/android/activities/CompleteProfileActivity;->mCurrentVerification:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;
    invoke-static {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->access$100(Lcom/airbnb/android/activities/CompleteProfileActivity;)Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    if-ne v0, v1, :cond_15

    .line 427
    iget-object v0, p0, Lcom/airbnb/android/activities/CompleteProfileActivity$2;->this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->completeVerification()V

    .line 429
    :cond_15
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 421
    check-cast p1, Lcom/airbnb/android/requests/SendEmailConfirmationCodeRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/CompleteProfileActivity$2;->onResponse(Lcom/airbnb/android/requests/SendEmailConfirmationCodeRequest;)V

    return-void
.end method
