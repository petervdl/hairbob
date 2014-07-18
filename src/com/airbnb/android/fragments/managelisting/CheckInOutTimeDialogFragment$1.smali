.class Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment$1;
.super Ljava/lang/Object;
.source "CheckInOutTimeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/CheckInOutTimeDialogFragment;->dismiss()V

    .line 79
    return-void
.end method
