.class public Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "EditProfileDetailsAdapter.java"


# instance fields
.field private mSections:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .param p1, "privateSection"    # Z

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    if-eqz p1, :cond_a

    sget-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->PRIVATE_DETAILS:Ljava/util/EnumSet;

    :goto_7
    iput-object v0, p0, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;->mSections:Ljava/util/EnumSet;

    .line 22
    return-void

    .line 21
    :cond_a
    sget-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->OPTIONAL_DETAILS:Ljava/util/EnumSet;

    goto :goto_7
.end method

.method private setGroupedCellWithContent(Lcom/airbnb/android/views/GroupedCell;Ljava/lang/String;)V
    .registers 4
    .param p1, "groupedCell"    # Lcom/airbnb/android/views/GroupedCell;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/android/views/GroupedCell;->showRightCaret(Z)V

    .line 56
    invoke-virtual {p1, p2}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 60
    :goto_d
    return-void

    .line 58
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/android/views/GroupedCell;->showRightCaret(Z)V

    goto :goto_d
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;->mSections:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;->mSections:Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;->mSections:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 41
    if-nez p2, :cond_12

    .line 42
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03005a

    invoke-virtual {v3, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_12
    move-object v0, p2

    .line 44
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .line 45
    .local v0, "groupedCell":Lcom/airbnb/android/views/GroupedCell;
    if-eqz p1, :cond_18

    const/4 v2, 0x1

    :cond_18
    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/GroupedCell;->showTopBorder(Z)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 48
    .local v1, "section":Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->getTitleId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/GroupedCell;->setTitle(I)V

    .line 49
    invoke-static {v1}, Lcom/airbnb/android/utils/UserProfileUtils;->getValue(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;->setGroupedCellWithContent(Lcom/airbnb/android/views/GroupedCell;Ljava/lang/String;)V

    .line 50
    return-object v0
.end method
