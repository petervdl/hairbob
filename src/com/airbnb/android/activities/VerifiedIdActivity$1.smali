.class Lcom/airbnb/android/activities/VerifiedIdActivity$1;
.super Ljava/lang/Object;
.source "VerifiedIdActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/VerifiedIdActivity;->handleVerifiedIdIntents(Ljava/lang/String;)V
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
        "Lcom/airbnb/android/requests/VerificationsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

.field final synthetic val$emailConfirmationCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/VerifiedIdActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 188
    iput-object p1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->val$emailConfirmationCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->displayLoaderFrame(Z)V

    .line 206
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 207
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    # invokes: Lcom/airbnb/android/activities/VerifiedIdActivity;->handleUpNavigation()V
    invoke-static {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->access$400(Lcom/airbnb/android/activities/VerifiedIdActivity;)V

    .line 208
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/VerificationsRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/VerificationsRequest;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->displayLoaderFrame(Z)V

    .line 193
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->val$emailConfirmationCode:Ljava/lang/String;

    # setter for: Lcom/airbnb/android/activities/VerifiedIdActivity;->mEmailConfirmationCode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->access$002(Lcom/airbnb/android/activities/VerifiedIdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    iget-object v1, p1, Lcom/airbnb/android/requests/VerificationsRequest;->verifications:Lcom/airbnb/android/models/CheckpointVerifications;

    # setter for: Lcom/airbnb/android/activities/VerifiedIdActivity;->mCheckpointVerifications:Lcom/airbnb/android/models/CheckpointVerifications;
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->access$102(Lcom/airbnb/android/activities/VerifiedIdActivity;Lcom/airbnb/android/models/CheckpointVerifications;)Lcom/airbnb/android/models/CheckpointVerifications;

    .line 195
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    iget-object v1, p1, Lcom/airbnb/android/requests/VerificationsRequest;->reservation:Lcom/airbnb/android/models/Reservation;

    # setter for: Lcom/airbnb/android/activities/VerifiedIdActivity;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/VerifiedIdActivity;->access$202(Lcom/airbnb/android/activities/VerifiedIdActivity;Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/models/Reservation;

    .line 197
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 199
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    # invokes: Lcom/airbnb/android/activities/VerifiedIdActivity;->initializeProgressBar()V
    invoke-static {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->access$300(Lcom/airbnb/android/activities/VerifiedIdActivity;)V

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->this$0:Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->showStep()V

    .line 201
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, Lcom/airbnb/android/requests/VerificationsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/VerifiedIdActivity$1;->onResponse(Lcom/airbnb/android/requests/VerificationsRequest;)V

    return-void
.end method
