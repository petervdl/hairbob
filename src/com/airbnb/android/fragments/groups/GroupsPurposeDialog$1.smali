.class Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog$1;
.super Ljava/lang/Object;
.source "GroupsPurposeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->mOptionsDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->access$000(Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 58
    return-void
.end method
