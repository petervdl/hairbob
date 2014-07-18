.class Lcom/airbnb/android/fragments/ContactHostFragment$7;
.super Ljava/lang/Object;
.source "ContactHostFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactHostFragment;->sendInquiry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

.field final synthetic val$fragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

.field final synthetic val$showRecommendations:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactHostFragment;ZLcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 4

    .prologue
    .line 326
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$7;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/ContactHostFragment$7;->val$showRecommendations:Z

    iput-object p3, p0, Lcom/airbnb/android/fragments/ContactHostFragment$7;->val$fragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressCancelled()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$7;->val$fragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 339
    return-void
.end method

.method public onProgressCompleted()V
    .registers 2

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$7;->val$showRecommendations:Z

    if-nez v0, :cond_9

    .line 332
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$7;->val$fragment:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 334
    :cond_9
    return-void
.end method
