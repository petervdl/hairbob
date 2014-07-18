.class Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$2;
.super Ljava/lang/Object;
.source "BasePriceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 104
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 105
    return-void
.end method
