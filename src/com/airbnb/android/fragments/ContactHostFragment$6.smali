.class Lcom/airbnb/android/fragments/ContactHostFragment$6;
.super Ljava/lang/Object;
.source "ContactHostFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactHostFragment;->setupStickyButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactHostFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V
    .registers 2

    .prologue
    .line 307
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$6;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$6;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # invokes: Lcom/airbnb/android/fragments/ContactHostFragment;->sendInquiry()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$700(Lcom/airbnb/android/fragments/ContactHostFragment;)V

    .line 313
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$6;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # invokes: Lcom/airbnb/android/fragments/ContactHostFragment;->makeInquiryAnalyticsParams()Lcom/airbnb/android/utils/Strap;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$800(Lcom/airbnb/android/fragments/ContactHostFragment;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 314
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackInquirySendButtonClick(Lcom/airbnb/android/utils/Strap;)V

    .line 315
    return-void
.end method
