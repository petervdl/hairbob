.class Lcom/airbnb/android/views/DateAndGuestCountView$3;
.super Ljava/lang/Object;
.source "DateAndGuestCountView.java"

# interfaces
.implements Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/DateAndGuestCountView;->init(Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;IILjava/util/Calendar;Ljava/util/Calendar;Lcom/airbnb/android/models/SpecialOffer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/DateAndGuestCountView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/DateAndGuestCountView;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/airbnb/android/views/DateAndGuestCountView$3;->this$0:Lcom/airbnb/android/views/DateAndGuestCountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/airbnb/android/views/GroupedCounter;I)V
    .registers 7
    .param p1, "groupedCounter"    # Lcom/airbnb/android/views/GroupedCounter;
    .param p2, "newVal"    # I

    .prologue
    .line 117
    iget-object v1, p0, Lcom/airbnb/android/views/DateAndGuestCountView$3;->this$0:Lcom/airbnb/android/views/DateAndGuestCountView;

    # getter for: Lcom/airbnb/android/views/DateAndGuestCountView;->mViewer:Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;
    invoke-static {v1}, Lcom/airbnb/android/views/DateAndGuestCountView;->access$000(Lcom/airbnb/android/views/DateAndGuestCountView;)Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;->setGuestCount(I)V

    .line 119
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "GUEST_COUNT"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 120
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    iget-object v1, p0, Lcom/airbnb/android/views/DateAndGuestCountView$3;->this$0:Lcom/airbnb/android/views/DateAndGuestCountView;

    # getter for: Lcom/airbnb/android/views/DateAndGuestCountView;->mIsBookItFlow:Z
    invoke-static {v1}, Lcom/airbnb/android/views/DateAndGuestCountView;->access$100(Lcom/airbnb/android/views/DateAndGuestCountView;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 121
    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItGuestSelectClick(Lcom/airbnb/android/utils/Strap;)V

    .line 125
    :goto_23
    return-void

    .line 123
    :cond_24
    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackInquiryGuestSelectClick(Lcom/airbnb/android/utils/Strap;)V

    goto :goto_23
.end method
