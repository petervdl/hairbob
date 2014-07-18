.class Lcom/airbnb/android/fragments/SentReferralsFragment$1;
.super Ljava/lang/Object;
.source "SentReferralsFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SentReferralsFragment;->setupTabHost(Landroid/widget/TabHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SentReferralsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SentReferralsFragment;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/airbnb/android/fragments/SentReferralsFragment$1;->this$0:Lcom/airbnb/android/fragments/SentReferralsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string/jumbo v0, "earned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 100
    const-string/jumbo v0, "earned"

    invoke-static {v0}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackInvitationsToggle(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment$1;->this$0:Lcom/airbnb/android/fragments/SentReferralsFragment;

    # getter for: Lcom/airbnb/android/fragments/SentReferralsFragment;->mReferralListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SentReferralsFragment;->access$000(Lcom/airbnb/android/fragments/SentReferralsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SentReferralsFragment$1;->this$0:Lcom/airbnb/android/fragments/SentReferralsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SentReferralsFragment;->mEarnedReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment$1;->this$0:Lcom/airbnb/android/fragments/SentReferralsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mEarnedReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;->notifyDataSetChanged()V

    .line 104
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment$1;->this$0:Lcom/airbnb/android/fragments/SentReferralsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mPendingReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;->notifyDataSetChanged()V

    .line 111
    :cond_2a
    :goto_2a
    return-void

    .line 105
    :cond_2b
    const-string/jumbo v0, "pending"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 106
    const-string/jumbo v0, "pending"

    invoke-static {v0}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackInvitationsToggle(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment$1;->this$0:Lcom/airbnb/android/fragments/SentReferralsFragment;

    # getter for: Lcom/airbnb/android/fragments/SentReferralsFragment;->mReferralListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SentReferralsFragment;->access$000(Lcom/airbnb/android/fragments/SentReferralsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SentReferralsFragment$1;->this$0:Lcom/airbnb/android/fragments/SentReferralsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SentReferralsFragment;->mPendingReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment$1;->this$0:Lcom/airbnb/android/fragments/SentReferralsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mPendingReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;->notifyDataSetChanged()V

    goto :goto_2a
.end method
