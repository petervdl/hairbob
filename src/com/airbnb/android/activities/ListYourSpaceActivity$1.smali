.class Lcom/airbnb/android/activities/ListYourSpaceActivity$1;
.super Ljava/lang/Object;
.source "ListYourSpaceActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ListYourSpaceActivity;->sendListingCreateRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

.field final synthetic val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ListYourSpaceActivity;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 3

    .prologue
    .line 137
    iput-object p1, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    const v1, 0x7f0e01b1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 157
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    iget-object v0, v0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    sget-object v1, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->CreatingListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    if-ne v0, v1, :cond_26

    .line 158
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    iget-object v1, v1, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->getPrevious()Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    move-result-object v1

    iput-object v1, v0, Lcom/airbnb/android/activities/ListYourSpaceActivity;->mLysState:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    .line 160
    :cond_26
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;)V
    .registers 11
    .param p1, "response"    # Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    iget-object v1, p1, Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    # setter for: Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->access$002(Lcom/airbnb/android/activities/ListYourSpaceActivity;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;

    .line 142
    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    sget-object v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v0, v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v0, v1, v7

    const-string/jumbo v0, "lys"

    aput-object v0, v1, v8

    const/4 v0, 0x2

    const-string/jumbo v2, "create_raw_listing"

    aput-object v2, v1, v0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    # getter for: Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->access$000(Lcom/airbnb/android/activities/ListYourSpaceActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getPrice()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L

    cmpg-double v0, v3, v5

    if-gez v0, :cond_9b

    const-string/jumbo v0, "autoprice_not_available"

    :goto_35
    aput-object v0, v1, v2

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    # getter for: Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->access$000(Lcom/airbnb/android/activities/ListYourSpaceActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    # getter for: Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->access$000(Lcom/airbnb/android/activities/ListYourSpaceActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getState()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    # getter for: Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->access$000(Lcom/airbnb/android/activities/ListYourSpaceActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getCountry()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    iget-object v1, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    const v2, 0x7f0e0418

    invoke-virtual {v1, v2}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    const v3, 0x7f0e0442

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    # getter for: Lcom/airbnb/android/activities/ListYourSpaceActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v5}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->access$000(Lcom/airbnb/android/activities/ListYourSpaceActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getLocalStepsRemaining()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020129

    iget-object v4, p0, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->this$0:Lcom/airbnb/android/activities/ListYourSpaceActivity;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->onProgressComplete(Ljava/lang/String;Ljava/lang/String;II)V

    .line 150
    return-void

    .line 142
    :cond_9b
    const-string/jumbo v0, "autoprice_available"

    goto :goto_35
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 137
    check-cast p1, Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/ListYourSpaceActivity$1;->onResponse(Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;)V

    return-void
.end method
