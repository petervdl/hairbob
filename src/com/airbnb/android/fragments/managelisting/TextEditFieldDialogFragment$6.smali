.class Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$6;
.super Ljava/lang/Object;
.source "TextEditFieldDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)V
    .registers 2

    .prologue
    .line 322
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 326
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 327
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    const/4 v1, 0x0

    # invokes: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->exit(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;Z)V

    .line 328
    return-void
.end method
