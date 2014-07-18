.class Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$1;
.super Ljava/lang/Object;
.source "SpokenLanguagesDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "spoken_languages"

    iget-object v2, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLanguages:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->access$000(Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v2, 0x2be

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 61
    iget-object v1, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->dismiss()V

    .line 62
    return-void
.end method
