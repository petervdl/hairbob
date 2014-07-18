.class public Lcom/airbnb/android/fragments/TaxesFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "TaxesFragment.java"


# static fields
.field private static final ARG_RESERVATION:Ljava/lang/String; = "reservation"


# instance fields
.field mLearnMoreView:Landroid/view/View;

.field mListingInfo:Lcom/airbnb/android/views/BookingDetailsListingView;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field mTaxesListView:Lcom/airbnb/android/views/LinearListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/fragments/TaxesFragment;
    .registers 4
    .param p0, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 32
    new-instance v1, Lcom/airbnb/android/fragments/TaxesFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/TaxesFragment;-><init>()V

    .line 33
    .local v1, "f":Lcom/airbnb/android/fragments/TaxesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "reservation"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/TaxesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TaxesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/fragments/TaxesFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const v2, 0x7f0300f1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "view":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 51
    iget-object v2, p0, Lcom/airbnb/android/fragments/TaxesFragment;->mListingInfo:Lcom/airbnb/android/views/BookingDetailsListingView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/TaxesFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/BookingDetailsListingView;->showListing(Lcom/airbnb/android/models/Listing;)V

    .line 53
    new-instance v0, Lcom/airbnb/android/adapters/TaxesDescriptionAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TaxesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/TaxesFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getTaxDescriptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/airbnb/android/adapters/TaxesDescriptionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 54
    .local v0, "adapter":Lcom/airbnb/android/adapters/TaxesDescriptionAdapter;
    iget-object v2, p0, Lcom/airbnb/android/fragments/TaxesFragment;->mTaxesListView:Lcom/airbnb/android/views/LinearListView;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    iget-object v2, p0, Lcom/airbnb/android/fragments/TaxesFragment;->mLearnMoreView:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/TaxesFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/TaxesFragment$1;-><init>(Lcom/airbnb/android/fragments/TaxesFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-object v1
.end method
