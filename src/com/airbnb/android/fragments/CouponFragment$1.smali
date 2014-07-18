.class Lcom/airbnb/android/fragments/CouponFragment$1;
.super Ljava/lang/Object;
.source "CouponFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CouponFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CouponFragment;

.field final synthetic val$couponField:Landroid/widget/EditText;

.field final synthetic val$user:Lcom/airbnb/android/models/User;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CouponFragment;Landroid/widget/EditText;Lcom/airbnb/android/models/User;)V
    .registers 4

    .prologue
    .line 53
    iput-object p1, p0, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/CouponFragment$1;->val$couponField:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/airbnb/android/fragments/CouponFragment$1;->val$user:Lcom/airbnb/android/models/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v3, p0, Lcom/airbnb/android/fragments/CouponFragment$1;->val$couponField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "couponCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 133
    :goto_10
    return-void

    .line 64
    :cond_11
    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackCodeEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Lcom/airbnb/android/fragments/CouponFragment$1;->val$user:Lcom/airbnb/android/models/User;

    if-eqz v3, :cond_33

    .line 70
    new-instance v1, Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;

    iget-object v3, p0, Lcom/airbnb/android/fragments/CouponFragment$1;->val$user:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/fragments/CouponFragment$1$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/CouponFragment$1$1;-><init>(Lcom/airbnb/android/fragments/CouponFragment$1;)V

    invoke-direct {v1, v3, v2, v4}, Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 96
    .local v1, "couponApplyRequest":Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;
    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;->execute()V

    goto :goto_10

    .line 102
    .end local v1    # "couponApplyRequest":Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;
    :cond_33
    new-instance v0, Lcom/airbnb/android/requests/VerifyReferralCodeRequest;

    new-instance v3, Lcom/airbnb/android/fragments/CouponFragment$1$2;

    invoke-direct {v3, p0, v2}, Lcom/airbnb/android/fragments/CouponFragment$1$2;-><init>(Lcom/airbnb/android/fragments/CouponFragment$1;Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/airbnb/android/requests/VerifyReferralCodeRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 130
    .local v0, "codeVerifyRequest":Lcom/airbnb/android/requests/VerifyReferralCodeRequest;
    iget-object v3, p0, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    invoke-virtual {v0, v3}, Lcom/airbnb/android/requests/VerifyReferralCodeRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    goto :goto_10
.end method
