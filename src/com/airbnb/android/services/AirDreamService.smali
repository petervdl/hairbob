.class public Lcom/airbnb/android/services/AirDreamService;
.super Landroid/service/dreams/DreamService;
.source "AirDreamService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static final DAYDREAM_LISTINGS:I = 0x14

.field private static final IMAGE_SWAP_DELAY_MILLIS:I = 0x7530


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImageView:Lcom/airbnb/android/views/AirImageView;

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mRequest:Lcom/airbnb/android/requests/PopularRequest;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/services/AirDreamService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/AirDreamService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mImages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/services/AirDreamService;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/AirDreamService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/airbnb/android/services/AirDreamService;->mImages:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/airbnb/android/services/AirDreamService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/AirDreamService;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/airbnb/android/services/AirDreamService;->mIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/services/AirDreamService;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/services/AirDreamService;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/services/AirDreamService;->setupDisplay()V

    return-void
.end method

.method private setupDisplay()V
    .registers 5

    .prologue
    .line 97
    iget-object v1, p0, Lcom/airbnb/android/services/AirDreamService;->mImageView:Lcom/airbnb/android/views/AirImageView;

    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mImages:Ljava/util/List;

    iget v2, p0, Lcom/airbnb/android/services/AirDreamService;->mIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/airbnb/android/services/AirDreamService;->mImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/services/AirDreamService;->mIndex:I

    .line 101
    sget-object v1, Lcom/airbnb/android/AirbnbApplication;->sImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mImages:Ljava/util/List;

    iget v2, p0, Lcom/airbnb/android/services/AirDreamService;->mIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/airbnb/android/services/AirDreamService$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/services/AirDreamService$2;-><init>(Lcom/airbnb/android/services/AirDreamService;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 114
    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/android/services/AirDreamService$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/services/AirDreamService$3;-><init>(Lcom/airbnb/android/services/AirDreamService;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 45
    invoke-virtual {p0, v1}, Lcom/airbnb/android/services/AirDreamService;->setInteractive(Z)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/services/AirDreamService;->setFullscreen(Z)V

    .line 49
    const v0, 0x7f030124

    invoke-virtual {p0, v0}, Lcom/airbnb/android/services/AirDreamService;->setContentView(I)V

    .line 50
    const v0, 0x7f08031d

    invoke-virtual {p0, v0}, Lcom/airbnb/android/services/AirDreamService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/AirImageView;

    iput-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mImageView:Lcom/airbnb/android/views/AirImageView;

    .line 51
    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mImageView:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirImageView;->setFadeEnabled(Z)V

    .line 52
    return-void
.end method

.method public onDreamingStarted()V
    .registers 4

    .prologue
    .line 56
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 58
    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mImageView:Lcom/airbnb/android/views/AirImageView;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirImageView;->setImageResource(I)V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/airbnb/android/requests/PopularRequest;

    const/16 v1, 0x14

    new-instance v2, Lcom/airbnb/android/services/AirDreamService$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/services/AirDreamService$1;-><init>(Lcom/airbnb/android/services/AirDreamService;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/PopularRequest;-><init>(ILcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mRequest:Lcom/airbnb/android/requests/PopularRequest;

    .line 93
    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mRequest:Lcom/airbnb/android/requests/PopularRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/PopularRequest;->execute()V

    .line 94
    return-void
.end method

.method public onDreamingStopped()V
    .registers 3

    .prologue
    .line 125
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 127
    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mRequest:Lcom/airbnb/android/requests/PopularRequest;

    if-eqz v0, :cond_c

    .line 128
    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mRequest:Lcom/airbnb/android/requests/PopularRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/PopularRequest;->cancel()V

    .line 131
    :cond_c
    iget-object v0, p0, Lcom/airbnb/android/services/AirDreamService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 132
    return-void
.end method
