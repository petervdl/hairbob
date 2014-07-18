.class Lcom/airbnb/android/fragments/BookingDetailsFragment$10;
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
    .line 836
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 840
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCollapsed:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1700(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_b
    # setter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCollapsed:Z
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1702(Lcom/airbnb/android/fragments/BookingDetailsFragment;Z)Z

    .line 841
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->updatePriceState()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1800(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 842
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$600(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItPriceBreakdownClick(Lcom/airbnb/android/utils/Strap;)V

    .line 843
    return-void

    .line 840
    :cond_1d
    const/4 v0, 0x0

    goto :goto_b
.end method
