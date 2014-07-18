.class public Lcom/airbnb/android/fragments/AirDialogFragments;
.super Ljava/lang/Object;
.source "AirDialogFragments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;,
        Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;,
        Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;,
        Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "air_dialog"

.field public static final EXTRA_ACTION_ITEM_ID:Ljava/lang/String; = "action_item_id"

.field public static final NO_RES_ID:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    return-void
.end method

.method public static showDialog(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/DialogFragment;Landroid/support/v4/app/Fragment;)V
    .registers 6
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "dialogFragment"    # Landroid/support/v4/app/DialogFragment;
    .param p2, "optionalTargetFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 49
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const-string/jumbo v2, "air_dialog"

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 50
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_10

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 53
    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 56
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 57
    const-string/jumbo v2, "air_dialog"

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 59
    return-void
.end method
