.class Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$2;
.super Ljava/lang/Object;
.source "TextEditFieldDialogFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 193
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$2;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$2;->val$rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$2;->val$rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 197
    .local v0, "heightDiff":I
    const/16 v1, 0x12c

    if-le v0, v1, :cond_1d

    .line 198
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    const/4 v2, 0x1

    # setter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mKeyboardOpen:Z
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$102(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;Z)Z

    .line 202
    :goto_1c
    return-void

    .line 200
    :cond_1d
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    const/4 v2, 0x0

    # setter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mKeyboardOpen:Z
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$102(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;Z)Z

    goto :goto_1c
.end method
