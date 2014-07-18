.class Lcom/airbnb/android/fragments/GenderSelectionFragment$1;
.super Ljava/lang/Object;
.source "GenderSelectionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/GenderSelectionFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/GenderSelectionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/GenderSelectionFragment;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/airbnb/android/fragments/GenderSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/GenderSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 41
    invoke-static {}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->values()[Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    move-result-object v2

    aget-object v0, v2, p2

    .line 42
    .local v0, "gender":Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "new_gender"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    iget-object v2, p0, Lcom/airbnb/android/fragments/GenderSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/GenderSelectionFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/GenderSelectionFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    const/16 v3, 0x2bd

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 45
    return-void
.end method
