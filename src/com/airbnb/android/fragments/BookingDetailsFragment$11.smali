.class Lcom/airbnb/android/fragments/BookingDetailsFragment$11;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupPriceFields(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 2

    .prologue
    .line 846
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$11;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 849
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$11;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 850
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$11;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$11;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 851
    return-void
.end method
