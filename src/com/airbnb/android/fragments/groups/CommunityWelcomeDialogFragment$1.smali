.class Lcom/airbnb/android/fragments/groups/CommunityWelcomeDialogFragment$1;
.super Ljava/lang/Object;
.source "CommunityWelcomeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommunityWelcomeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommunityWelcomeDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommunityWelcomeDialogFragment;Landroid/app/AlertDialog;)V
    .registers 3

    .prologue
    .line 51
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommunityWelcomeDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/CommunityWelcomeDialogFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/groups/CommunityWelcomeDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityWelcomeDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 56
    return-void
.end method
