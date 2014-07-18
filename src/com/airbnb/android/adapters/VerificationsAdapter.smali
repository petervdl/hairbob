.class public Lcom/airbnb/android/adapters/VerificationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "VerificationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/VerificationsAdapter$1;,
        Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;,
        Lcom/airbnb/android/adapters/VerificationsAdapter$DisconnectGoogleCallback;
    }
.end annotation


# static fields
.field private static final DISPLAYED_VERIFICATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERIFICATION_EMAIL:Ljava/lang/String; = "email"

.field public static final VERIFICATION_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final VERIFICATION_GOOGLE:Ljava/lang/String; = "google"

.field public static final VERIFICATION_LINKEDIN:Ljava/lang/String; = "linkedin"

.field private static final VERIFICATION_OFFLINE_JUMIO:Ljava/lang/String; = "jumio"

.field private static final VERIFICATION_OFFLINE_KBA:Ljava/lang/String; = "kba"

.field private static final VERIFICATION_PHONE:Ljava/lang/String; = "phone"

.field public static final VERIFICATION_REVIEWS:Ljava/lang/String; = "reviews"

.field private static mPassportString:Ljava/lang/String;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mVerificationLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "google"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "phone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "facebook"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "reviews"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "linkedin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "jumio"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "kba"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/adapters/VerificationsAdapter;->DISPLAYED_VERIFICATIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "verifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "verificationLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mVerifications:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mVerificationLabels:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 48
    sget-object v1, Lcom/airbnb/android/adapters/VerificationsAdapter;->DISPLAYED_VERIFICATIONS:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 49
    iget-object v1, p0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mVerifications:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, p0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mVerificationLabels:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 53
    :cond_44
    return-void
.end method

.method private createViewHolder(Landroid/view/View;)Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;
    .registers 4
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 129
    new-instance v0, Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/VerificationsAdapter$1;)V

    .line 130
    .local v0, "viewHolder":Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;
    const v1, 0x7f0803b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;->verificationTextView:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f0803b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;->iconImageView:Landroid/widget/ImageView;

    .line 132
    return-object v0
.end method

.method private isPassportLabel(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "verificationLabel"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mPassportString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e07cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mPassportString:Ljava/lang/String;

    .line 125
    :cond_15
    sget-object v0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mPassportString:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mVerifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/VerificationsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mVerificationLabels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 71
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    if-nez p2, :cond_13

    .line 77
    iget-object v5, p0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03016a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 78
    invoke-direct {p0, p2}, Lcom/airbnb/android/adapters/VerificationsAdapter;->createViewHolder(Landroid/view/View;)Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :cond_13
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;

    .line 81
    .local v4, "viewHolder":Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;
    iget-object v5, p0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mVerifications:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "verification":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/adapters/VerificationsAdapter;->mVerificationLabels:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    .local v3, "verificationLabel":Ljava/lang/String;
    iget-object v5, v4, Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;->verificationTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v1, 0x7f02016c

    .line 87
    .local v1, "iconId":I
    const-string/jumbo v5, "phone"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 88
    const v1, 0x7f020173

    .line 112
    :cond_3d
    :goto_3d
    const v5, 0x7f0a0014

    invoke-static {v1, v5}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, v4, Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    return-object p2

    .line 90
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4a
    const-string/jumbo v5, "facebook"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 91
    const v1, 0x7f02016d

    goto :goto_3d

    .line 93
    :cond_57
    const-string/jumbo v5, "google"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 94
    const v1, 0x7f02016e

    goto :goto_3d

    .line 96
    :cond_64
    const-string/jumbo v5, "reviews"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 97
    const v1, 0x7f020172

    goto :goto_3d

    .line 99
    :cond_71
    const-string/jumbo v5, "linkedin"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 100
    const v1, 0x7f02016f

    goto :goto_3d

    .line 102
    :cond_7e
    const-string/jumbo v5, "email"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 103
    const v1, 0x7f02016c

    goto :goto_3d

    .line 105
    :cond_8b
    const-string/jumbo v5, "jumio"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 106
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/airbnb/android/adapters/VerificationsAdapter;->isPassportLabel(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a2

    const v1, 0x7f020171

    :goto_a1
    goto :goto_3d

    :cond_a2
    const v1, 0x7f020170

    goto :goto_a1

    .line 109
    :cond_a6
    const-string/jumbo v5, "kba"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 110
    const v1, 0x7f020170

    goto :goto_3d
.end method
