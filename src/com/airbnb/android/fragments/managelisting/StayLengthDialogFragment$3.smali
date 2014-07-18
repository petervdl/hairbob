.class Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$3;
.super Ljava/lang/Object;
.source "StayLengthDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 105
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/StayLengthDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 106
    return-void
.end method
