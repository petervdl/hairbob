.class public Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListingDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter$1;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/EnumSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;Ljava/lang/Object;>;"
    .local p3, "detailsData":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->mValues:Ljava/util/HashMap;

    .line 23
    iput-object p3, p0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->mData:Ljava/util/EnumSet;

    .line 24
    return-void
.end method

.method private getAmenities()Ljava/lang/String;
    .registers 4

    .prologue
    .line 97
    iget-object v1, p0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->mValues:Ljava/util/HashMap;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "amenities":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 99
    check-cast v0, Ljava/lang/String;

    .line 102
    .end local v0    # "amenities":Ljava/lang/Object;
    :goto_e
    return-object v0

    .restart local v0    # "amenities":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private getLocation()Ljava/lang/String;
    .registers 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->mValues:Ljava/util/HashMap;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "location":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 90
    check-cast v0, Ljava/lang/String;

    .line 93
    .end local v0    # "location":Ljava/lang/Object;
    :goto_e
    return-object v0

    .restart local v0    # "location":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->mData:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->mData:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 44
    if-nez p2, :cond_13

    .line 45
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f030196

    invoke-virtual {v4, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_13
    move-object v2, p2

    .line 47
    check-cast v2, Lcom/airbnb/android/views/GroupedCell;

    .line 48
    .local v2, "groupedCell":Lcom/airbnb/android/views/GroupedCell;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    .line 50
    .local v1, "details":Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;
    if-eqz p1, :cond_33

    move v4, v5

    :goto_1f
    invoke-virtual {v2, v4}, Lcom/airbnb/android/views/GroupedCell;->showTopBorder(Z)V

    .line 53
    iget v4, v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->mTitleId:I

    invoke-virtual {v2, v4}, Lcom/airbnb/android/views/GroupedCell;->setTitle(I)V

    .line 56
    sget-object v4, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_54

    .line 84
    :cond_32
    :goto_32
    return-object v2

    :cond_33
    move v4, v6

    .line 50
    goto :goto_1f

    .line 58
    :pswitch_35
    invoke-direct {p0}, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "location":Ljava/lang/String;
    if-eqz v3, :cond_32

    .line 60
    invoke-virtual {v2, v6}, Lcom/airbnb/android/views/GroupedCell;->showRightCaret(Z)V

    .line 61
    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 66
    .end local v3    # "location":Ljava/lang/String;
    :pswitch_42
    invoke-direct {p0}, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->getAmenities()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "amenities":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 68
    invoke-virtual {v2, v6}, Lcom/airbnb/android/views/GroupedCell;->showRightCaret(Z)V

    .line 69
    invoke-virtual {v2, v0}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 78
    .end local v0    # "amenities":Ljava/lang/String;
    :pswitch_4f
    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/GroupedCell;->showRightCaret(Z)V

    goto :goto_32

    .line 56
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_35
        :pswitch_42
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch
.end method

.method public setDetailsMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "detailsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->mValues:Ljava/util/HashMap;

    .line 107
    return-void
.end method
