.class public Lcom/airbnb/android/views/groups/AuthorView;
.super Landroid/widget/LinearLayout;
.source "AuthorView.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/Lightenable;


# instance fields
.field private mAuthorPostedTextView:Landroid/widget/TextView;

.field private mAuthorable:Lcom/airbnb/android/models/groups/Authorable;

.field private mAvatar:Lcom/airbnb/android/views/HaloImageView;

.field private mGroup:Lcom/airbnb/android/models/groups/Group;

.field private mLightened:Z

.field private mPostedAgoTextView:Landroid/widget/TextView;

.field private mTrackingPage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-boolean v4, p0, Lcom/airbnb/android/views/groups/AuthorView;->mLightened:Z

    .line 35
    sget-object v3, Lcom/airbnb/android/R$styleable;->AuthorView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "aAuthor":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "orientation":Ljava/lang/String;
    const v3, 0x7f0e0741

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03010c

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    :goto_27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    sget-object v3, Lcom/airbnb/android/R$styleable;->Lightenable:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 45
    .local v1, "aLighten":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/airbnb/android/views/groups/AuthorView;->setupViews(Landroid/content/res/TypedArray;)V

    .line 46
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void

    .line 40
    .end local v1    # "aLighten":Landroid/content/res/TypedArray;
    :cond_37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03010b

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_27
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/groups/AuthorView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/groups/AuthorView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/android/views/groups/AuthorView;->mTrackingPage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/groups/AuthorView;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/groups/AuthorView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/android/views/groups/AuthorView;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/groups/AuthorView;)Lcom/airbnb/android/models/groups/Authorable;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/groups/AuthorView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/android/views/groups/AuthorView;->mAuthorable:Lcom/airbnb/android/models/groups/Authorable;

    return-object v0
.end method

.method private setupViews(Landroid/content/res/TypedArray;)V
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v1, 0x0

    .line 50
    const v0, 0x7f0802e0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/AuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/AuthorView;->mAuthorPostedTextView:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0802e1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/AuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/AuthorView;->mPostedAgoTextView:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0802df

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/AuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/AuthorView;->mAvatar:Lcom/airbnb/android/views/HaloImageView;

    .line 53
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/views/groups/AuthorView;->mLightened:Z

    .line 54
    iget-boolean v0, p0, Lcom/airbnb/android/views/groups/AuthorView;->mLightened:Z

    if-eqz v0, :cond_2f

    .line 55
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/AuthorView;->lighten()V

    .line 57
    :cond_2f
    return-void
.end method


# virtual methods
.method public lighten()V
    .registers 5

    .prologue
    .line 85
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/airbnb/android/views/groups/AuthorView;->mLightened:Z

    .line 86
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/AuthorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 87
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/AuthorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 88
    .local v1, "thickness":F
    iget-object v2, p0, Lcom/airbnb/android/views/groups/AuthorView;->mAvatar:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v2, v0, v1}, Lcom/airbnb/android/views/HaloImageView;->setBorder(IF)V

    .line 89
    iget-object v2, p0, Lcom/airbnb/android/views/groups/AuthorView;->mAuthorPostedTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/airbnb/android/utils/MiscUtils;->lightenText(Landroid/widget/TextView;)V

    .line 90
    iget-object v2, p0, Lcom/airbnb/android/views/groups/AuthorView;->mPostedAgoTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/airbnb/android/utils/MiscUtils;->lightenText(Landroid/widget/TextView;)V

    .line 91
    return-void
.end method

.method public setAuthorable(Lcom/airbnb/android/models/groups/Authorable;Lcom/airbnb/android/models/groups/Group;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V
    .registers 10
    .param p1, "authorable"    # Lcom/airbnb/android/models/groups/Authorable;
    .param p2, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p3, "trackingPage"    # Ljava/lang/String;
    .param p4, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/airbnb/android/views/groups/AuthorView;->mAuthorable:Lcom/airbnb/android/models/groups/Authorable;

    .line 61
    iput-object p3, p0, Lcom/airbnb/android/views/groups/AuthorView;->mTrackingPage:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/airbnb/android/views/groups/AuthorView;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 63
    iget-object v3, p0, Lcom/airbnb/android/views/groups/AuthorView;->mAuthorable:Lcom/airbnb/android/models/groups/Authorable;

    invoke-interface {v3}, Lcom/airbnb/android/models/groups/Authorable;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "authorName":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/views/groups/AuthorView;->mAuthorPostedTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lcom/airbnb/android/views/groups/AuthorView;->mAuthorable:Lcom/airbnb/android/models/groups/Authorable;

    invoke-interface {v3}, Lcom/airbnb/android/models/groups/Authorable;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    .line 67
    .local v1, "createdAt":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/AuthorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/airbnb/android/utils/DateHelper;->getRelativeDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "timeAgo":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/airbnb/android/views/groups/AuthorView;->mPostedAgoTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, p0, Lcom/airbnb/android/views/groups/AuthorView;->mAvatar:Lcom/airbnb/android/views/HaloImageView;

    iget-object v4, p0, Lcom/airbnb/android/views/groups/AuthorView;->mAuthorable:Lcom/airbnb/android/models/groups/Authorable;

    invoke-interface {v4}, Lcom/airbnb/android/models/groups/Authorable;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 71
    iget-object v3, p0, Lcom/airbnb/android/views/groups/AuthorView;->mAvatar:Lcom/airbnb/android/views/HaloImageView;

    new-instance v4, Lcom/airbnb/android/views/groups/AuthorView$1;

    invoke-direct {v4, p0, p4}, Lcom/airbnb/android/views/groups/AuthorView$1;-><init>(Lcom/airbnb/android/views/groups/AuthorView;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/HaloImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method
