.class public Lcom/airbnb/android/adapters/WishListsPagerAdapter;
.super Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;
.source "WishListsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/WishListsPagerAdapter$1;,
        Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V
    .registers 3
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 77
    # getter for: Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->sSections:[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;
    invoke-static {}, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->access$000()[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 48
    invoke-static {p1}, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->getSection(I)Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    move-result-object v2

    .line 51
    .local v2, "section":Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;
    sget-object v3, Lcom/airbnb/android/adapters/WishListsPagerAdapter$1;->$SwitchMap$com$airbnb$android$adapters$WishListsPagerAdapter$WishListSection:[I

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4a

    .line 65
    new-instance v1, Lcom/airbnb/android/activities/MainActivity$DummySectionFragment;

    invoke-direct {v1}, Lcom/airbnb/android/activities/MainActivity$DummySectionFragment;-><init>()V

    .line 66
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "section_number"

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_24
    :goto_24
    return-object v1

    .line 53
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_25
    sget-object v3, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->MyWishlists:Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/android/adapters/WishListsPagerAdapter;->getCachedFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 54
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_24

    .line 55
    new-instance v1, Lcom/airbnb/android/fragments/WishlistsFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/airbnb/android/fragments/WishlistsFragment;-><init>()V

    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_24

    .line 59
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_37
    sget-object v3, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->FriendsWishLists:Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/android/adapters/WishListsPagerAdapter;->getCachedFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 60
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_24

    .line 61
    new-instance v1, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;-><init>()V

    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_24

    .line 51
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_37
    .end packed-switch
.end method

.method public getPageTitleInt(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 81
    invoke-static {p1}, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->getSection(I)Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    move-result-object v0

    # getter for: Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->mNameId:I
    invoke-static {v0}, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->access$100(Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;)I

    move-result v0

    return v0
.end method
