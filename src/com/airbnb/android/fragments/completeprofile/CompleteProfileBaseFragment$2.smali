.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$2;
.super Ljava/lang/Object;
.source "CompleteProfileBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->showConfirmation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v0

    .line 81
    .local v0, "completeProfileActivity":Lcom/airbnb/android/activities/CompleteProfileActivity;
    if-eqz v0, :cond_e

    .line 82
    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->updateVerificationState()V

    .line 83
    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->requestVerification()V

    .line 85
    :cond_e
    return-void
.end method
