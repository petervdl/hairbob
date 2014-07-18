.class Lcom/airbnb/android/fragments/PayoutSelectFragment$1;
.super Ljava/lang/Object;
.source "PayoutSelectFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutSelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutSelectFragment;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "rowId"    # J
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
    .line 75
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/airbnb/android/models/PaymentMethodInfo;

    if-nez v1, :cond_9

    .line 86
    :goto_8
    return-void

    .line 78
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/PaymentMethodInfo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/PaymentMethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "paymentType":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/activities/PayoutActivity;->isPaymentSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 80
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/PaymentMethodInfo;

    invoke-virtual {v2}, Lcom/airbnb/android/models/PaymentMethodInfo;->getCurrencies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/activities/PayoutActivity;->startAddPayment(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8

    .line 82
    :cond_37
    const v1, 0x7f0e05af

    const v2, 0x7f0e05ae

    const v3, 0x7f0e0563

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_8
.end method
