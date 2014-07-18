.class Lcom/airbnb/android/fragments/PayoutEnvoyFragment$2;
.super Ljava/lang/Object;
.source "PayoutEnvoyFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutEnvoyFragment;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressComplete()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/PayoutActivity;->clearBackStackAndGoToList()V

    .line 114
    return-void
.end method
