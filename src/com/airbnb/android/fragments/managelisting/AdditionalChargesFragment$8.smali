.class Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$8;
.super Ljava/lang/Object;
.source "AdditionalChargesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->openKeyboard(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 245
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$8;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 248
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 249
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 250
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$8;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 251
    return-void
.end method
