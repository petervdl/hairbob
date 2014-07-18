.class Lcom/airbnb/android/fragments/ContactsFragment$2;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactsFragment;->sendReferralMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactsFragment;

.field final synthetic val$phoneNumbersPresent:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactsFragment;Z)V
    .registers 3

    .prologue
    .line 284
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactsFragment$2;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/ContactsFragment$2;->val$phoneNumbersPresent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressCancelled()V
    .registers 1

    .prologue
    .line 295
    return-void
.end method

.method public onProgressCompleted()V
    .registers 2

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ContactsFragment$2;->val$phoneNumbersPresent:Z

    if-nez v0, :cond_d

    .line 289
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment$2;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 291
    :cond_d
    return-void
.end method
