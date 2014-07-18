.class public Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;
.super Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;
.source "BrowsableSectionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$1;,
        Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;,
        Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;
    }
.end annotation


# instance fields
.field private mBrowsableType:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;)V
    .registers 5
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "type"    # Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 83
    if-nez p2, :cond_14

    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v0

    if-nez v0, :cond_14

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "BrowsableType can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_14
    iput-object p2, p0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->mBrowsableType:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    .line 88
    return-void
.end method

.method public static getBrowsableMapFragment(Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;)Landroid/support/v4/app/Fragment;
    .registers 3
    .param p0, "type"    # Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    .prologue
    .line 120
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$1;->$SwitchMap$com$airbnb$android$adapters$BrowsableSectionsAdapter$BrowsableType:[I

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 126
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->newInstance(Z)Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    move-result-object v0

    :goto_10
    return-object v0

    .line 123
    :pswitch_11
    invoke-static {}, Lcom/airbnb/android/fragments/StaticListingsMapFragment;->newInstance()Lcom/airbnb/android/fragments/StaticListingsMapFragment;

    move-result-object v0

    goto :goto_10

    .line 120
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public static getBrowsablePhotoFragment(Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;)Landroid/support/v4/app/Fragment;
    .registers 3
    .param p0, "type"    # Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->Search:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    if-ne p0, v1, :cond_a

    .line 133
    invoke-static {}, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->newInstance()Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;

    move-result-object v0

    .line 139
    :cond_9
    :goto_9
    return-object v0

    .line 134
    :cond_a
    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->Recommendations:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    if-ne p0, v1, :cond_14

    .line 135
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->newInstance(Z)Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    move-result-object v0

    goto :goto_9

    .line 136
    :cond_14
    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->LMB:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    if-ne p0, v1, :cond_9

    .line 137
    invoke-static {}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->newInstance()Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 144
    # getter for: Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->sSections:[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;
    invoke-static {}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->access$000()[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 92
    invoke-static {p1}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->getSection(I)Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    move-result-object v2

    .line 95
    .local v2, "section":Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;
    sget-object v3, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$1;->$SwitchMap$com$airbnb$android$adapters$BrowsableSectionsAdapter$BrowsableSection:[I

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4c

    .line 109
    new-instance v1, Lcom/airbnb/android/activities/MainActivity$DummySectionFragment;

    invoke-direct {v1}, Lcom/airbnb/android/activities/MainActivity$DummySectionFragment;-><init>()V

    .line 110
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "section_number"

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_24
    :goto_24
    return-object v1

    .line 97
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_25
    sget-object v3, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Map:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->getCachedFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 98
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_24

    .line 99
    iget-object v3, p0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->mBrowsableType:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    invoke-static {v3}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->getBrowsableMapFragment(Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_24

    .line 103
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_38
    sget-object v3, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Photo:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->getCachedFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 104
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_24

    .line 105
    iget-object v3, p0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->mBrowsableType:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    invoke-static {v3}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->getBrowsablePhotoFragment(Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_24

    .line 95
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_38
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 149
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 150
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {p1}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->getSection(I)Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
