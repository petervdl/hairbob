.class Lcom/airbnb/android/fragments/TOSDialogFragment$7;
.super Ljava/lang/Object;
.source "TOSDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TOSDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TOSDialogFragment;Landroid/app/AlertDialog;)V
    .registers 3

    .prologue
    .line 135
    iput-object p1, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$7;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog2"    # Landroid/content/DialogInterface;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$7;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/TOSDialogFragment$7$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/TOSDialogFragment$7$1;-><init>(Lcom/airbnb/android/fragments/TOSDialogFragment$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method
