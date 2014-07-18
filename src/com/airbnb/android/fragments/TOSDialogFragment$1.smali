.class Lcom/airbnb/android/fragments/TOSDialogFragment$1;
.super Ljava/lang/Object;
.source "TOSDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 64
    iput-object p1, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/TOSDialogFragment;->updateAcceptButton()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->access$000(Lcom/airbnb/android/fragments/TOSDialogFragment;)V

    .line 69
    return-void
.end method
