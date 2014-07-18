.class Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$1;
.super Ljava/lang/Object;
.source "TextEditFieldDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 157
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->showTooltip()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)V

    .line 162
    return-void
.end method
