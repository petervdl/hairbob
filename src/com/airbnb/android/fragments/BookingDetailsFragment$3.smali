.class Lcom/airbnb/android/fragments/BookingDetailsFragment$3;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupTermsConditionsText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

.field final synthetic val$hasTaxes:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;Z)V
    .registers 3

    .prologue
    .line 385
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->val$hasTaxes:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLink(I)V
    .registers 6
    .param p1, "linkIndex"    # I

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->val$hasTaxes:Z

    if-eqz v0, :cond_1b

    .line 389
    if-nez p1, :cond_19

    .line 390
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const v2, 0x7f0e07ab

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/AirbnbApplication;->startMobileWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 409
    :cond_18
    :goto_18
    return-void

    .line 395
    :cond_19
    add-int/lit8 p1, p1, -0x1

    .line 398
    :cond_1b
    sget-object v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->CancellationPolicy:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_42

    .line 399
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$600(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "OPTION"

    const-string/jumbo v2, "CANCELLATION_POLICY"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItTermsAndConditionsClick(Lcom/airbnb/android/utils/Strap;)V

    .line 400
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->showCancellationPolicyDialog(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/fragments/AirFragment;)V

    goto :goto_18

    .line 401
    :cond_42
    sget-object v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->HouseRules:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_7a

    .line 402
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$600(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "OPTION"

    const-string/jumbo v2, "HOUSE_RULES"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItTermsAndConditionsClick(Lcom/airbnb/android/utils/Strap;)V

    .line 403
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e02cd

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getHouseRules()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/TextDetailActivity;->intentFor(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_18

    .line 404
    :cond_7a
    sget-object v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->TermsOfService:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_95

    .line 405
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const v2, 0x7f0e0793

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/AirbnbApplication;->startMobileWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_18

    .line 406
    :cond_95
    sget-object v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->GuestRefundPolicy:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_18

    .line 407
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const v2, 0x7f0e0790

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/AirbnbApplication;->startMobileWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_18
.end method
