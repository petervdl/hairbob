.class Lcom/airbnb/android/fragments/ListingCalendarFragment$4;
.super Ljava/lang/Object;
.source "ListingCalendarFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingCalendarFragment;->loadCalendar(Lcom/airbnb/android/models/Listing;)V
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
        "Lcom/airbnb/android/requests/CalendarRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

.field final synthetic val$listing:Lcom/airbnb/android/models/Listing;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingCalendarFragment;Lcom/airbnb/android/models/Listing;)V
    .registers 3

    .prologue
    .line 168
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$4;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$4;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$4;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 184
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$4;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CalendarRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/CalendarRequest;

    .prologue
    .line 172
    iget-object v1, p1, Lcom/airbnb/android/requests/CalendarRequest;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$4;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$4;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    # invokes: Lcom/airbnb/android/fragments/ListingCalendarFragment;->shouldShowFux()Z
    invoke-static {v4}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->access$200(Lcom/airbnb/android/fragments/ListingCalendarFragment;)Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->newInstance(Lcom/airbnb/android/models/SquareMap;JZ)Lcom/airbnb/android/fragments/ManageCalendarFragment;

    move-result-object v0

    .line 173
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$4;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0801cf

    const-class v3, Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 178
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$4;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 179
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 168
    check-cast p1, Lcom/airbnb/android/requests/CalendarRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ListingCalendarFragment$4;->onResponse(Lcom/airbnb/android/requests/CalendarRequest;)V

    return-void
.end method
