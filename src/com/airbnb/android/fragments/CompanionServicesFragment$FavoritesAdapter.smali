.class Lcom/airbnb/android/fragments/CompanionServicesFragment$FavoritesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CompanionServicesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/CompanionServicesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoritesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CompanionServicesFragment;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/fragments/CompanionServicesFragment;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment$FavoritesAdapter;->this$0:Lcom/airbnb/android/fragments/CompanionServicesFragment;

    .line 116
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/fragments/CompanionServicesFragment;Landroid/content/Context;ILjava/util/List;Lcom/airbnb/android/fragments/CompanionServicesFragment$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/airbnb/android/fragments/CompanionServicesFragment;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # Lcom/airbnb/android/fragments/CompanionServicesFragment$1;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/android/fragments/CompanionServicesFragment$FavoritesAdapter;-><init>(Lcom/airbnb/android/fragments/CompanionServicesFragment;Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private getColorForPosition(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_1c

    .line 142
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "can only have up to 4 elements in favorite services"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_c
    const v0, 0x7f0a0013

    .line 140
    :goto_f
    return v0

    .line 136
    :pswitch_10
    const v0, 0x7f0a000a

    goto :goto_f

    .line 138
    :pswitch_14
    const v0, 0x7f0a000c

    goto :goto_f

    .line 140
    :pswitch_18
    const v0, 0x7f0a0021

    goto :goto_f

    .line 132
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 121
    if-nez p2, :cond_b

    .line 122
    new-instance p2, Lcom/airbnb/android/views/FavoriteServiceGridItem;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CompanionServicesFragment$FavoritesAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/airbnb/android/views/FavoriteServiceGridItem;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_b
    move-object v0, p2

    .line 125
    check-cast v0, Lcom/airbnb/android/views/FavoriteServiceGridItem;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/CompanionServicesFragment$FavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/FavoriteServiceGridItem;->setServiceText(Ljava/lang/Integer;)V

    .line 126
    iget-object v0, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment$FavoritesAdapter;->this$0:Lcom/airbnb/android/fragments/CompanionServicesFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/CompanionServicesFragment$FavoritesAdapter;->getColorForPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    return-object p2
.end method
