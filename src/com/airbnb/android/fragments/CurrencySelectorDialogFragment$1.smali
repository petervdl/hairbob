.class Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$1;
.super Ljava/lang/Object;
.source "CurrencySelectorDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->dismiss()V

    .line 61
    iget-object v3, p0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->mCurrences:Ljava/util/List;
    invoke-static {v3}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->access$000(Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Currency;

    .line 62
    .local v1, "c":Lcom/airbnb/android/models/Currency;
    iget-object v3, p0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;
    invoke-static {v3}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->access$100(Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;)Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 63
    iget-object v3, p0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;
    invoke-static {v3}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->access$100(Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;)Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;->onCurrencySelected(Lcom/airbnb/android/models/Currency;)V

    .line 66
    :cond_22
    iget-object v3, p0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 67
    .local v2, "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_38

    const-class v3, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 68
    check-cast v2, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;

    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    invoke-interface {v2, v1}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;->onCurrencySelected(Lcom/airbnb/android/models/Currency;)V

    .line 75
    :cond_37
    :goto_37
    return-void

    .line 70
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_38
    iget-object v3, p0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 71
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_37

    instance-of v3, v0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;

    if-eqz v3, :cond_37

    .line 72
    check-cast v0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0, v1}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;->onCurrencySelected(Lcom/airbnb/android/models/Currency;)V

    goto :goto_37
.end method
