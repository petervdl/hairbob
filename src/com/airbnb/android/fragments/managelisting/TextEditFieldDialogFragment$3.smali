.class Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$3;
.super Ljava/lang/Object;
.source "TextEditFieldDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->onStart()V
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
    .line 219
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    const/4 v1, 0x1

    # invokes: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->exit(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;Z)V

    .line 224
    return-void
.end method
