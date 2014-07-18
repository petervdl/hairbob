.class public Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AmenitiesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/AmenitiesItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/AmenitiesItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p4, "amenities":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/AmenitiesItem;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 25
    if-nez p2, :cond_35

    .line 26
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 27
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030167

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 29
    new-instance v0, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;)V

    .line 31
    .local v0, "holder":Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;
    const v3, 0x7f08001f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 32
    const v3, 0x7f08010d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36
    .end local v0    # "holder":Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_35
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;

    .line 38
    .restart local v0    # "holder":Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/AmenitiesItem;

    .line 40
    .local v2, "item":Lcom/airbnb/android/models/AmenitiesItem;
    iget-object v3, v0, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/AmenitiesItem;->getAmenity()Lcom/airbnb/android/models/Amenities;

    move-result-object v4

    iget v4, v4, Lcom/airbnb/android/models/Amenities;->mStringId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 41
    iget-object v3, v0, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/airbnb/android/models/AmenitiesItem;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    return-object p2
.end method
