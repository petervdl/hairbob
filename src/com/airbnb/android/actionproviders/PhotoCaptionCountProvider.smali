.class public Lcom/airbnb/android/actionproviders/PhotoCaptionCountProvider;
.super Landroid/view/ActionProvider;
.source "PhotoCaptionCountProvider.java"


# instance fields
.field private mCurrentPhotoCaptionManager:Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/actionproviders/PhotoCaptionCountProvider;->mInflater:Landroid/view/LayoutInflater;

    .line 21
    instance-of v0, p1, Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    if-eqz v0, :cond_11

    .line 22
    check-cast p1, Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/airbnb/android/actionproviders/PhotoCaptionCountProvider;->mCurrentPhotoCaptionManager:Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    .line 24
    :cond_11
    return-void
.end method


# virtual methods
.method public onCreateActionView()Landroid/view/View;
    .registers 6

    .prologue
    .line 28
    iget-object v2, p0, Lcom/airbnb/android/actionproviders/PhotoCaptionCountProvider;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03019d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f080112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    .local v0, "text":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/airbnb/android/actionproviders/PhotoCaptionCountProvider;->mCurrentPhotoCaptionManager:Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    invoke-interface {v2, v0}, Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;->addPhotoCaptionText(Landroid/widget/TextView;)V

    .line 33
    return-object v1
.end method
