.class Lcom/airbnb/android/fragments/BookingDetailsFragment$19;
.super Landroid/text/style/ClickableSpan;
.source "BookingDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->displayFXCopy(Lcom/airbnb/android/requests/PaymentMethodsRequest;)V
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
    .line 1131
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$19;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$19;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$19;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$19;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const v3, 0x7f0e020f

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/WebViewActivity;->intentForUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 1136
    return-void
.end method
