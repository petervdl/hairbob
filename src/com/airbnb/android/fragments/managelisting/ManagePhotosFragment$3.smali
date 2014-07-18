.class Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$3;
.super Ljava/lang/Object;
.source "ManagePhotosFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->cancelProPhotography()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

.field final synthetic val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 3

    .prologue
    .line 334
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$3;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressCancelled()V
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$3;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 343
    return-void
.end method

.method public onProgressCompleted()V
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$3;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 338
    return-void
.end method
