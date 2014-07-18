.class public Lcom/airbnb/android/views/CitySelectorView;
.super Landroid/widget/LinearLayout;
.source "CitySelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/CitySelectorView$OnCitySelectedListener;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/airbnb/android/views/CitySelectorView$OnCitySelectedListener;

.field mCitiesLayout:Landroid/widget/LinearLayout;

.field private mClosestLmbAirLocation:Lcom/airbnb/android/models/AirLocation;

.field private mDefaultTextSelector:Landroid/content/res/ColorStateList;

.field private mSelectedLocation:Lcom/airbnb/android/models/AirLocation;

.field private mSelectedTextColor:I

.field private mViewToLocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/TextView;",
            "Lcom/airbnb/android/models/AirLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/CitySelectorView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/CitySelectorView;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/CitySelectorView;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private getLocationView(Landroid/content/Context;Lcom/airbnb/android/models/AirLocation;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Lcom/airbnb/android/models/AirLocation;
    .param p3, "closestLocationToUser"    # Z
    .param p4, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030026

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f08007b

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/airbnb/android/models/AirLocation;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    if-eqz p3, :cond_2c

    .line 103
    const v3, 0x7f02012c

    const v4, 0x7f0a000a

    invoke-static {v3, v4}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 107
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2c
    iget-object v3, p0, Lcom/airbnb/android/views/CitySelectorView;->mViewToLocationMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-direct {p0, v1}, Lcom/airbnb/android/views/CitySelectorView;->updateTextColor(Landroid/widget/TextView;)V

    .line 110
    return-object v2
.end method

.method private init(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030121

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "content":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 62
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/views/CitySelectorView;->mViewToLocationMap:Ljava/util/HashMap;

    .line 64
    invoke-virtual {p0, v4}, Lcom/airbnb/android/views/CitySelectorView;->setOrientation(I)V

    .line 66
    invoke-virtual {p0}, Lcom/airbnb/android/views/CitySelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 67
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0a0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/views/CitySelectorView;->mSelectedTextColor:I

    .line 68
    const v2, 0x7f020192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/views/CitySelectorView;->mDefaultTextSelector:Landroid/content/res/ColorStateList;

    .line 71
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getLmbLocation()Lcom/airbnb/android/models/AirLocation;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/views/CitySelectorView;->mSelectedLocation:Lcom/airbnb/android/models/AirLocation;

    .line 72
    invoke-static {p1}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getClosestAirLocation(Landroid/content/Context;)Lcom/airbnb/android/models/AirLocation;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/views/CitySelectorView;->mClosestLmbAirLocation:Lcom/airbnb/android/models/AirLocation;

    .line 74
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/CitySelectorView;->loadCitiesLayout(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private loadCitiesLayout(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-static {}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getInstance()Lcom/airbnb/android/persist/LmbAirLocationStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/AirLocation;

    .line 84
    .local v2, "location":Lcom/airbnb/android/models/AirLocation;
    iget-object v5, p0, Lcom/airbnb/android/views/CitySelectorView;->mClosestLmbAirLocation:Lcom/airbnb/android/models/AirLocation;

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/airbnb/android/views/CitySelectorView;->mClosestLmbAirLocation:Lcom/airbnb/android/models/AirLocation;

    invoke-virtual {v2, v5}, Lcom/airbnb/android/models/AirLocation;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/4 v0, 0x1

    .line 85
    .local v0, "closestLocation":Z
    :goto_26
    iget-object v5, p0, Lcom/airbnb/android/views/CitySelectorView;->mCitiesLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v2, v0, v5}, Lcom/airbnb/android/views/CitySelectorView;->getLocationView(Landroid/content/Context;Lcom/airbnb/android/models/AirLocation;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, "locationView":Landroid/view/View;
    if-eqz v0, :cond_36

    .line 89
    iget-object v5, p0, Lcom/airbnb/android/views/CitySelectorView;->mCitiesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_d

    .end local v0    # "closestLocation":Z
    .end local v3    # "locationView":Landroid/view/View;
    :cond_34
    move v0, v4

    .line 84
    goto :goto_26

    .line 91
    .restart local v0    # "closestLocation":Z
    .restart local v3    # "locationView":Landroid/view/View;
    :cond_36
    iget-object v5, p0, Lcom/airbnb/android/views/CitySelectorView;->mCitiesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_d

    .line 94
    .end local v0    # "closestLocation":Z
    .end local v2    # "location":Lcom/airbnb/android/models/AirLocation;
    .end local v3    # "locationView":Landroid/view/View;
    :cond_3c
    return-void
.end method

.method private updateTextColor(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/airbnb/android/views/CitySelectorView;->mViewToLocationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/AirLocation;

    iget-object v1, p0, Lcom/airbnb/android/views/CitySelectorView;->mSelectedLocation:Lcom/airbnb/android/models/AirLocation;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/AirLocation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 116
    iget v0, p0, Lcom/airbnb/android/views/CitySelectorView;->mSelectedTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    :goto_15
    return-void

    .line 118
    :cond_16
    iget-object v0, p0, Lcom/airbnb/android/views/CitySelectorView;->mDefaultTextSelector:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_15
.end method


# virtual methods
.method public getAirLocation()Lcom/airbnb/android/models/AirLocation;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/airbnb/android/views/CitySelectorView;->mSelectedLocation:Lcom/airbnb/android/models/AirLocation;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "clickedView"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v2, p0, Lcom/airbnb/android/views/CitySelectorView;->mViewToLocationMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/AirLocation;

    iput-object v2, p0, Lcom/airbnb/android/views/CitySelectorView;->mSelectedLocation:Lcom/airbnb/android/models/AirLocation;

    .line 130
    iget-object v2, p0, Lcom/airbnb/android/views/CitySelectorView;->mViewToLocationMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, "view":Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/airbnb/android/views/CitySelectorView;->updateTextColor(Landroid/widget/TextView;)V

    goto :goto_14

    .line 134
    .end local v1    # "view":Landroid/widget/TextView;
    :cond_24
    iget-object v2, p0, Lcom/airbnb/android/views/CitySelectorView;->mCallback:Lcom/airbnb/android/views/CitySelectorView$OnCitySelectedListener;

    if-eqz v2, :cond_2f

    .line 135
    iget-object v2, p0, Lcom/airbnb/android/views/CitySelectorView;->mCallback:Lcom/airbnb/android/views/CitySelectorView$OnCitySelectedListener;

    iget-object v3, p0, Lcom/airbnb/android/views/CitySelectorView;->mSelectedLocation:Lcom/airbnb/android/models/AirLocation;

    invoke-interface {v2, v3}, Lcom/airbnb/android/views/CitySelectorView$OnCitySelectedListener;->onCitySelected(Lcom/airbnb/android/models/AirLocation;)V

    .line 137
    :cond_2f
    return-void
.end method

.method public setOnCitySelectedListener(Lcom/airbnb/android/views/CitySelectorView$OnCitySelectedListener;)V
    .registers 2
    .param p1, "callback"    # Lcom/airbnb/android/views/CitySelectorView$OnCitySelectedListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/airbnb/android/views/CitySelectorView;->mCallback:Lcom/airbnb/android/views/CitySelectorView$OnCitySelectedListener;

    .line 79
    return-void
.end method
