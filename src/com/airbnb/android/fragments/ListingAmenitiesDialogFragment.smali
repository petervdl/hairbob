.class public Lcom/airbnb/android/fragments/ListingAmenitiesDialogFragment;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "ListingAmenitiesDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/ListingAmenitiesDialogFragment$AmenityAdapter;
    }
.end annotation


# static fields
.field private static final ARG_AM_ID:Ljava/lang/String; = "amenity_id"

.field private static final ARG_AM_STRING:Ljava/lang/String; = "amenity_description"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    .line 53
    return-void
.end method

.method public static newInstance([I[Ljava/lang/String;)Lcom/airbnb/android/fragments/ListingAmenitiesDialogFragment;
    .registers 5
    .param p0, "amenityIds"    # [I
    .param p1, "amenityDescriptions"    # [Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "amenity_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 29
    const-string/jumbo v1, "amenity_description"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v2, Lcom/airbnb/android/fragments/ListingAmenitiesDialogFragment;

    invoke-direct {v2}, Lcom/airbnb/android/fragments/ListingAmenitiesDialogFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    const v2, 0x7f0e005d

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withListView(Landroid/os/Bundle;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withoutDividers()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/ListingAmenitiesDialogFragment;

    return-object v1
.end method


# virtual methods
.method protected getListAdapter()Landroid/widget/ListAdapter;
    .registers 10

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingAmenitiesDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 40
    .local v4, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "amenity_id"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 41
    .local v2, "amenityIds":[I
    const-string/jumbo v6, "amenity_description"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "amenityDescriptions":[Ljava/lang/String;
    array-length v6, v2

    new-array v1, v6, [Landroid/util/Pair;

    .line 44
    .local v1, "amenityHolders":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_16
    array-length v6, v2

    if-ge v5, v6, :cond_37

    .line 45
    aget v6, v2, v5

    invoke-static {v6}, Lcom/airbnb/android/models/Amenities;->getAmenityForId(I)Lcom/airbnb/android/models/Amenities;

    move-result-object v3

    .line 46
    .local v3, "amenityObj":Lcom/airbnb/android/models/Amenities;
    new-instance v7, Landroid/util/Pair;

    if-eqz v3, :cond_33

    iget v6, v3, Lcom/airbnb/android/models/Amenities;->mDrawableId:I

    :goto_25
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v8, v0, v5

    invoke-direct {v7, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v1, v5

    .line 44
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 46
    :cond_33
    const v6, 0x7f020101

    goto :goto_25

    .line 50
    .end local v3    # "amenityObj":Lcom/airbnb/android/models/Amenities;
    :cond_37
    new-instance v6, Lcom/airbnb/android/fragments/ListingAmenitiesDialogFragment$AmenityAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingAmenitiesDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/airbnb/android/fragments/ListingAmenitiesDialogFragment$AmenityAdapter;-><init>(Landroid/content/Context;[Landroid/util/Pair;)V

    return-object v6
.end method
