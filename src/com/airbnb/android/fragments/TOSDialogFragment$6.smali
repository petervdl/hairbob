.class Lcom/airbnb/android/fragments/TOSDialogFragment$6;
.super Ljava/lang/Object;
.source "TOSDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TOSDialogFragment;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/TOSDialogFragment;->accept()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->access$400(Lcom/airbnb/android/fragments/TOSDialogFragment;)V

    .line 113
    return-void
.end method
