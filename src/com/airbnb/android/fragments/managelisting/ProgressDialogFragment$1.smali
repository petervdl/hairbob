.class Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$1;
.super Ljava/lang/Object;
.source "ProgressDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setupDualButtonsIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x191

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0800fe

    if-ne v1, v2, :cond_27

    .line 180
    const-string/jumbo v1, "click_positive_button"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 186
    :cond_26
    :goto_26
    return-void

    .line 182
    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0800fd

    if-ne v1, v2, :cond_26

    .line 183
    const-string/jumbo v1, "click_negative_button"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_26
.end method
