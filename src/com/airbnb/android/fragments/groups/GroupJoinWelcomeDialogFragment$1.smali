.class Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment$1;
.super Ljava/lang/Object;
.source "GroupJoinWelcomeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;Landroid/app/AlertDialog;)V
    .registers 3

    .prologue
    .line 77
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 82
    return-void
.end method
