.class public Lcom/airbnb/android/views/PhotoRearranger;
.super Landroid/view/View;
.source "PhotoRearranger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;,
        Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;,
        Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;,
        Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;,
        Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;,
        Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SELECTION_SCALE_FACTOR:F = 1.2f

.field private static final INVALID_BITMAP_INDEX:I = -0x1

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final KEY_ACTIVE_BITMAP_INDEX:Ljava/lang/String; = "active_bitmap_index"

.field private static final KEY_IS_MULTI_SELECT:Ljava/lang/String; = "is_multi_select"

.field private static final KEY_PENDING_BITMAP_COUNT:Ljava/lang/String; = "pending_bitmap_count"

.field private static final KEY_PREVIOUS_BITMAP_INDEX:Ljava/lang/String; = "previous_bitmap_index"

.field private static final KEY_SELECTED_PHOTOS:Ljava/lang/String; = "selected_photos"

.field private static final KEY_SUPER:Ljava/lang/String; = "super_saved"

.field private static final PHOTO_SIZE_INV_RATIO:F = 0.6666667f

.field public static final sScaleInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public static final sSelectionInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public static final sTranslationInterpolator:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private mActiveBitmapInRemovalArea:Z

.field private mActiveBitmapIndex:I

.field private mActivePointerId:I

.field private mAnimMS:I

.field private mCheckBoxSelected:Landroid/graphics/Bitmap;

.field private mCheckBoxUnselected:Landroid/graphics/Bitmap;

.field private mCheckboxPadding:I

.field private mContentHeight:I

.field private mCurrentEdgeScrollSpeed:I

.field private mDragAndDropListener:Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;

.field private mEdgeScrollSpeed:I

.field private mEdgeScrollThreshold:I

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mHapticFeedbackLengthMS:J

.field private mHighlightPaint:Landroid/graphics/Paint;

.field private mInMultiSelectMode:Z

.field private mKnownIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMoveX:I

.field private mLastMoveY:I

.field private mLeadPhotoHeight:I

.field private mLeadPhotoWidth:I

.field private mMultiSelectListener:Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;

.field private mNumPhotosPerRow:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPendingBitmaps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCount:I

.field private mPendingPhotoAnimDurationMS:I

.field private mPendingPhotoIndicator:Landroid/graphics/Bitmap;

.field private mPendingPhotoPaint:Landroid/graphics/Paint;

.field private mPhotoPadding:I

.field private mPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevBitmapIndex:I

.field private mRemovalAreaHeight:I

.field private mRemovalAreaSlop:I

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mSecondaryPhotoHeight:I

.field private mSecondaryPhotoWidth:I

.field private mSelectedPhotos:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionScaleFactor:F

.field private mSingleSelectListener:Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/airbnb/android/views/PhotoRearranger;->sSelectionInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 104
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/airbnb/android/views/PhotoRearranger;->sScaleInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 105
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/airbnb/android/views/PhotoRearranger;->sTranslationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 404
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingCount:I

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/PhotoRearranger;->init(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 417
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 404
    const/4 v1, -0x1

    iput v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingCount:I

    .line 421
    sget-object v1, Lcom/airbnb/android/R$styleable;->PhotoRearranger:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 422
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/PhotoRearranger;->init(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 423
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 424
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 427
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 404
    const/4 v1, -0x1

    iput v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingCount:I

    .line 428
    sget-object v1, Lcom/airbnb/android/R$styleable;->PhotoRearranger:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 429
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/PhotoRearranger;->init(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 430
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 431
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/PhotoRearranger;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I

    return v0
.end method

.method static synthetic access$1002(Lcom/airbnb/android/views/PhotoRearranger;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLastMoveX:I

    return p1
.end method

.method static synthetic access$1102(Lcom/airbnb/android/views/PhotoRearranger;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLastMoveY:I

    return p1
.end method

.method static synthetic access$1200(Lcom/airbnb/android/views/PhotoRearranger;IIZ)I
    .registers 5
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/PhotoRearranger;->findIndexForScreenPos(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/airbnb/android/views/PhotoRearranger;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/airbnb/android/views/PhotoRearranger;)Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mMultiSelectListener:Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/airbnb/android/views/PhotoRearranger;)Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSingleSelectListener:Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/airbnb/android/views/PhotoRearranger;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    return p1
.end method

.method static synthetic access$1702(Lcom/airbnb/android/views/PhotoRearranger;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPrevBitmapIndex:I

    return p1
.end method

.method static synthetic access$1800(Lcom/airbnb/android/views/PhotoRearranger;)Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mDragAndDropListener:Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/airbnb/android/views/PhotoRearranger;)J
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mHapticFeedbackLengthMS:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/PhotoRearranger;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSelectionScaleFactor:F

    return v0
.end method

.method static synthetic access$2000(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/os/Vibrator;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/airbnb/android/views/PhotoRearranger;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mCurrentEdgeScrollSpeed:I

    return p1
.end method

.method static synthetic access$2202(Lcom/airbnb/android/views/PhotoRearranger;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapInRemovalArea:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/airbnb/android/views/PhotoRearranger;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/support/v4/widget/ScrollerCompat;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/views/PhotoRearranger;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mInMultiSelectMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mCheckBoxUnselected:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mCheckBoxSelected:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/views/PhotoRearranger;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mCheckboxPadding:I

    return v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mHighlightPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/views/PhotoRearranger;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;

    .prologue
    .line 43
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$902(Lcom/airbnb/android/views/PhotoRearranger;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActivePointerId:I

    return p1
.end method

.method private calcLeadPhotoWidth(I)I
    .registers 4
    .param p1, "viewWidth"    # I

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    return v0
.end method

.method private calcPhotoHeight(I)I
    .registers 4
    .param p1, "width"    # I

    .prologue
    .line 692
    int-to-float v0, p1

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private calcSecondaryPhotoWidth(I)I
    .registers 4
    .param p1, "leadWidth"    # I

    .prologue
    .line 688
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotoPadding:I

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mNumPhotosPerRow:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    sub-int v0, p1, v0

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mNumPhotosPerRow:I

    div-int/2addr v0, v1

    return v0
.end method

.method private findIndexForScreenPos(IIZ)I
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "considerScroll"    # Z

    .prologue
    .line 910
    iget v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaHeight:I

    iget v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaSlop:I

    add-int/2addr v3, v4

    if-ge p2, v3, :cond_9

    .line 911
    const/4 v3, -0x1

    .line 928
    :goto_8
    return v3

    .line 913
    :cond_9
    iget v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaHeight:I

    sub-int/2addr p2, v3

    .line 915
    if-eqz p3, :cond_15

    .line 916
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    sub-int/2addr p2, v3

    .line 919
    :cond_15
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLeadPhotoHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotoPadding:I

    add-int v1, v3, v4

    .line 920
    .local v1, "leadAreaHeight":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLeadPhotoHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotoPadding:I

    add-int/2addr v3, v4

    if-ge p2, v3, :cond_2e

    .line 921
    const/4 v3, 0x0

    goto :goto_8

    .line 924
    :cond_2e
    sub-int/2addr p2, v1

    .line 925
    iget v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSecondaryPhotoHeight:I

    iget v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotoPadding:I

    add-int/2addr v3, v4

    div-int v2, p2, v3

    .line 926
    .local v2, "rowIndex":I
    int-to-float v3, p1

    iget v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mNumPhotosPerRow:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 928
    .local v0, "colIndex":I
    iget v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mNumPhotosPerRow:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method private findScreenSpaceForIndex(IZ)Landroid/graphics/Rect;
    .registers 11
    .param p1, "index"    # I
    .param p2, "considerScroll"    # Z

    .prologue
    .line 932
    if-nez p1, :cond_23

    .line 933
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getPaddingLeft()I

    move-result v2

    .line 934
    .local v2, "hOffset":I
    iget v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaHeight:I

    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getPaddingTop()I

    move-result v6

    add-int v4, v5, v6

    .line 936
    .local v4, "vOffset":I
    if-eqz p2, :cond_17

    .line 937
    iget-object v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v5

    add-int/2addr v4, v5

    .line 940
    :cond_17
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLeadPhotoWidth:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLeadPhotoHeight:I

    add-int/2addr v7, v4

    invoke-direct {v5, v2, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 953
    :goto_22
    return-object v5

    .line 942
    .end local v2    # "hOffset":I
    .end local v4    # "vOffset":I
    :cond_23
    add-int/lit8 v1, p1, -0x1

    .line 943
    .local v1, "gridIndex":I
    iget v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mNumPhotosPerRow:I

    div-int v3, v1, v5

    .line 944
    .local v3, "rowIndex":I
    iget v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mNumPhotosPerRow:I

    rem-int v0, v1, v5

    .line 946
    .local v0, "colIndex":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotoPadding:I

    iget v7, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSecondaryPhotoWidth:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v0

    add-int v2, v5, v6

    .line 947
    .restart local v2    # "hOffset":I
    iget v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaHeight:I

    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLeadPhotoHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotoPadding:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotoPadding:I

    iget v7, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSecondaryPhotoHeight:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v3

    add-int v4, v5, v6

    .line 949
    .restart local v4    # "vOffset":I
    if-eqz p2, :cond_57

    .line 950
    iget-object v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v5

    add-int/2addr v4, v5

    .line 953
    :cond_57
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSecondaryPhotoWidth:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSecondaryPhotoHeight:I

    add-int/2addr v7, v4

    invoke-direct {v5, v2, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_22
.end method

.method private init(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const v8, 0x3f99999a

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 434
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    .line 436
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPaint:Landroid/graphics/Paint;

    .line 437
    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 439
    const-string/jumbo v4, "vibrator"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mVibrator:Landroid/os/Vibrator;

    .line 441
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 443
    new-instance v4, Landroid/support/v4/view/GestureDetectorCompat;

    new-instance v5, Lcom/airbnb/android/views/PhotoRearranger$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/views/PhotoRearranger$1;-><init>(Lcom/airbnb/android/views/PhotoRearranger;)V

    invoke-direct {v4, p1, v5}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 522
    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v4, v7}, Landroid/support/v4/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    .line 524
    iput v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActivePointerId:I

    .line 525
    iput v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    .line 526
    iput v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPrevBitmapIndex:I

    .line 527
    iput-boolean v9, p0, Lcom/airbnb/android/views/PhotoRearranger;->mInMultiSelectMode:Z

    .line 528
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingBitmaps:Ljava/util/LinkedList;

    .line 530
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoPaint:Landroid/graphics/Paint;

    .line 531
    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 532
    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 533
    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0075

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 535
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mHighlightPaint:Landroid/graphics/Paint;

    .line 536
    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 537
    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0076

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 539
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mKnownIds:Ljava/util/HashSet;

    .line 544
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 546
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_151

    .line 547
    const v4, 0x7f0c001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p2, v9, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mNumPhotosPerRow:I

    .line 548
    const v4, 0x7f0b0084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p2, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotoPadding:I

    .line 549
    const/4 v4, 0x2

    const v5, 0x7f0c001b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mHapticFeedbackLengthMS:J

    .line 551
    const/4 v4, 0x5

    const v5, 0x7f0b0083

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mEdgeScrollThreshold:I

    .line 554
    const/4 v4, 0x6

    const v5, 0x7f0b0082

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mEdgeScrollSpeed:I

    .line 556
    const/4 v4, 0x7

    const v5, 0x7f0b0085

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaSlop:I

    .line 558
    const v4, 0x7f0c001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p2, v10, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoAnimDurationMS:I

    .line 561
    const v4, 0x7f0c001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p2, v10, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I

    .line 562
    const/16 v4, 0x8

    const v5, 0x7f0b0081

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mCheckboxPadding:I

    .line 564
    const/4 v4, 0x4

    invoke-virtual {p2, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSelectionScaleFactor:F

    .line 566
    const/16 v4, 0xa

    const v5, 0x7f020219

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 567
    .local v2, "pendingPhotoResId":I
    const/16 v4, 0xc

    const v5, 0x7f02007b

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 568
    .local v1, "checkboxUnselectedResId":I
    const/16 v4, 0xd

    const v5, 0x7f02007a

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 587
    .local v0, "checkboxSelectedResId":I
    :goto_13e
    invoke-static {v3, v2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;

    .line 588
    invoke-static {v3, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mCheckBoxUnselected:Landroid/graphics/Bitmap;

    .line 589
    invoke-static {v3, v0}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mCheckBoxSelected:Landroid/graphics/Bitmap;

    .line 590
    return-void

    .line 570
    .end local v0    # "checkboxSelectedResId":I
    .end local v1    # "checkboxUnselectedResId":I
    .end local v2    # "pendingPhotoResId":I
    :cond_151
    const v4, 0x7f0c001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mNumPhotosPerRow:I

    .line 571
    const v4, 0x7f0b0084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotoPadding:I

    .line 572
    const v4, 0x7f0c001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mHapticFeedbackLengthMS:J

    .line 573
    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mEdgeScrollThreshold:I

    .line 574
    const v4, 0x7f0b0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mEdgeScrollSpeed:I

    .line 575
    const v4, 0x7f0b0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaSlop:I

    .line 576
    const v4, 0x7f0c001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoAnimDurationMS:I

    .line 578
    const v4, 0x7f0c001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I

    .line 579
    const v4, 0x7f0b0081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mCheckboxPadding:I

    .line 580
    iput v8, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSelectionScaleFactor:F

    .line 582
    const v2, 0x7f020219

    .line 583
    .restart local v2    # "pendingPhotoResId":I
    const v1, 0x7f02007b

    .line 584
    .restart local v1    # "checkboxUnselectedResId":I
    const v0, 0x7f02007a

    .restart local v0    # "checkboxSelectedResId":I
    goto :goto_13e
.end method

.method private declared-synchronized recalculateAllBitmapPositions()V
    .registers 4

    .prologue
    .line 702
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 703
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/airbnb/android/views/PhotoRearranger;->findScreenSpaceForIndex(IZ)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->setScreenSpace(Landroid/graphics/Rect;)V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1f

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 705
    :cond_1d
    monitor-exit p0

    return-void

    .line 702
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private scroll(I)I
    .registers 9
    .param p1, "dy"    # I

    .prologue
    const/4 v3, 0x0

    .line 891
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I

    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getMeasuredHeight()I

    move-result v1

    if-gt v0, v1, :cond_a

    .line 906
    :goto_9
    return v3

    .line 895
    :cond_a
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v6

    .line 897
    .local v6, "currY":I
    add-int v0, v6, p1

    if-lez v0, :cond_2d

    .line 898
    neg-int p1, v6

    .line 903
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v2

    move v4, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 904
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    move v3, p1

    .line 906
    goto :goto_9

    .line 899
    :cond_2d
    add-int v0, v6, p1

    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_15

    .line 900
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I

    sub-int/2addr v0, v1

    sub-int p1, v0, v6

    goto :goto_15
.end method


# virtual methods
.method public addPendingPhoto()V
    .registers 8

    .prologue
    .line 1052
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4d

    .line 1053
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getLocalPhotoCount()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/airbnb/android/views/PhotoRearranger;->findScreenSpaceForIndex(IZ)Landroid/graphics/Rect;

    move-result-object v2

    .line 1054
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1055
    .local v0, "c":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1057
    .local v1, "off":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingBitmaps:Ljava/util/LinkedList;

    new-instance v4, Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;-><init>(Lcom/airbnb/android/views/PhotoRearranger;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1059
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    .line 1060
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->requestLayout()V

    .line 1062
    .end local v0    # "c":Landroid/graphics/Point;
    .end local v1    # "off":Landroid/graphics/Point;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_4d
    return-void
.end method

.method public endMultiSelect()V
    .registers 4

    .prologue
    .line 1001
    iget-object v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    .line 1002
    .local v1, "mb":Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;
    invoke-virtual {v1}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->clearSelection()V

    goto :goto_6

    .line 1004
    .end local v1    # "mb":Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;
    :cond_16
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mInMultiSelectMode:Z

    .line 1005
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    .line 1006
    return-void
.end method

.method public getAndRemoveSelectedPhotoIds()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getSelectedPhotoIds()Ljava/util/ArrayList;

    move-result-object v3

    .line 1011
    .local v3, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1012
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1013
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v4}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1014
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 1018
    :cond_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_47

    .line 1019
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/airbnb/android/views/PhotoRearranger;->findScreenSpaceForIndex(IZ)Landroid/graphics/Rect;

    move-result-object v2

    .line 1020
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v4, v2}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->startScale(Landroid/graphics/Rect;)V

    .line 1021
    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v4, v2}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->moveTo(Landroid/graphics/Rect;)V

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1023
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_47
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    .line 1025
    return-object v3
.end method

.method public getLocalPhotoCount()I
    .registers 3

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPhotos()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1039
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Photo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_25

    .line 1041
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v3}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->getPhoto()Lcom/airbnb/android/models/Photo;

    move-result-object v1

    .line 1044
    .local v1, "photo":Lcom/airbnb/android/models/Photo;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Lcom/airbnb/android/models/Photo;->setSortOrder(I)V

    .line 1045
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1048
    .end local v1    # "photo":Lcom/airbnb/android/models/Photo;
    :cond_25
    return-object v2
.end method

.method public getSelectedPhotoIds()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1029
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v2, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    .line 1031
    .local v1, "mb":Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;
    invoke-virtual {v1}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1032
    invoke-virtual {v1}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1035
    .end local v1    # "mb":Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;
    :cond_29
    return-object v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 728
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 730
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 731
    move-object/from16 v0, p0

    iget v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_48

    move-object/from16 v0, p0

    iget v2, v0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaHeight:I

    .line 732
    .local v2, "clipOffset":I
    :goto_11
    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 733
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    .line 734
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 735
    .local v3, "currY":I
    const/4 v12, 0x0

    int-to-float v13, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 737
    move-object/from16 v0, p0

    iget v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingCount:I

    if-lez v12, :cond_58

    .line 738
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingCount:I

    if-ge v6, v12, :cond_53

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/views/PhotoRearranger;->addPendingPhoto()V

    .line 738
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 731
    .end local v2    # "clipOffset":I
    .end local v3    # "currY":I
    .end local v6    # "i":I
    :cond_48
    move-object/from16 v0, p0

    iget v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaSlop:I

    add-int v2, v12, v13

    goto :goto_11

    .line 741
    .restart local v2    # "clipOffset":I
    .restart local v3    # "currY":I
    .restart local v6    # "i":I
    :cond_53
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingCount:I

    .line 744
    .end local v6    # "i":I
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/views/PhotoRearranger;->getLocalPhotoCount()I

    move-result v12

    if-nez v12, :cond_5f

    .line 793
    :cond_5e
    :goto_5e
    return-void

    .line 748
    :cond_5f
    const/4 v8, 0x0

    .line 749
    .local v8, "isAnimating":Z
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_61
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_86

    .line 750
    move-object/from16 v0, p0

    iget v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    if-eq v6, v12, :cond_83

    .line 751
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->draw(Landroid/graphics/Canvas;Z)Z

    move-result v12

    or-int/2addr v8, v12

    .line 749
    :cond_83
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    .line 755
    :cond_86
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_fa

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_fa

    .line 756
    const/4 v8, 0x1

    .line 757
    const/high16 v12, 0x43b40000

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoAnimDurationMS:I

    int-to-long v15, v15

    rem-long/2addr v13, v15

    long-to-float v13, v13

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoAnimDurationMS:I

    int-to-float v13, v13

    div-float v4, v12, v13

    .line 758
    .local v4, "degrees":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_b4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_fa

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;

    .line 759
    .local v10, "pb":Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;
    iget-object v11, v10, Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;->mScreenSpace:Landroid/graphics/Rect;

    .line 760
    .local v11, "rect":Landroid/graphics/Rect;
    iget-object v1, v10, Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;->mCenter:Landroid/graphics/Point;

    .line 761
    .local v1, "c":Landroid/graphics/Point;
    iget-object v9, v10, Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;->mOffset:Landroid/graphics/Point;

    .line 763
    .local v9, "off":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 765
    iget v12, v1, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget v13, v1, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;

    iget v13, v1, Landroid/graphics/Point;->x:I

    iget v14, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    iget v14, v1, Landroid/graphics/Point;->y:I

    iget v15, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingPhotoPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 767
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b4

    .line 772
    .end local v1    # "c":Landroid/graphics/Point;
    .end local v4    # "degrees":F
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "off":Landroid/graphics/Point;
    .end local v10    # "pb":Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;
    .end local v11    # "rect":Landroid/graphics/Rect;
    :cond_fa
    move-object/from16 v0, p0

    iget v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_127

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 777
    const/4 v12, 0x0

    int-to-float v13, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 779
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapInRemovalArea:Z

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->draw(Landroid/graphics/Canvas;Z)Z

    move-result v12

    or-int/2addr v8, v12

    .line 782
    :cond_127
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 784
    move-object/from16 v0, p0

    iget v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mCurrentEdgeScrollSpeed:I

    if-eqz v12, :cond_14e

    .line 785
    const/4 v8, 0x1

    .line 786
    move-object/from16 v0, p0

    iget v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mCurrentEdgeScrollSpeed:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/airbnb/android/views/PhotoRearranger;->scroll(I)I

    move-result v5

    .line 787
    .local v5, "delta":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    const/4 v13, 0x0

    neg-int v14, v5

    invoke-virtual {v12, v13, v14}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->addDragDelta(II)V

    .line 790
    .end local v5    # "delta":I
    :cond_14e
    if-nez v8, :cond_15a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v12

    if-nez v12, :cond_5e

    .line 791
    :cond_15a
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_5e
.end method

.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 654
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 655
    .local v8, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 656
    .local v0, "h":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 658
    .local v1, "hMode":I
    iget v9, p0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaHeight:I

    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I

    .line 660
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getLocalPhotoCount()I

    move-result v4

    .line 661
    .local v4, "n":I
    if-lez v4, :cond_4c

    .line 662
    invoke-direct {p0, v8}, Lcom/airbnb/android/views/PhotoRearranger;->calcLeadPhotoWidth(I)I

    move-result v3

    .line 663
    .local v3, "leadPhotoWidth":I
    invoke-direct {p0, v3}, Lcom/airbnb/android/views/PhotoRearranger;->calcPhotoHeight(I)I

    move-result v2

    .line 664
    .local v2, "leadPhotoHeight":I
    iget v9, p0, Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I

    .line 666
    const/4 v9, 0x1

    if-le v4, v9, :cond_4c

    .line 667
    invoke-direct {p0, v3}, Lcom/airbnb/android/views/PhotoRearranger;->calcSecondaryPhotoWidth(I)I

    move-result v7

    .line 668
    .local v7, "secondaryPhotoWidth":I
    invoke-direct {p0, v7}, Lcom/airbnb/android/views/PhotoRearranger;->calcPhotoHeight(I)I

    move-result v6

    .line 669
    .local v6, "secondaryPhotoHeight":I
    add-int/lit8 v9, v4, -0x1

    iget v10, p0, Lcom/airbnb/android/views/PhotoRearranger;->mNumPhotosPerRow:I

    add-int/lit8 v10, v10, -0x1

    add-int/2addr v9, v10

    iget v10, p0, Lcom/airbnb/android/views/PhotoRearranger;->mNumPhotosPerRow:I

    div-int v5, v9, v10

    .line 670
    .local v5, "numSecondaryRows":I
    iget v9, p0, Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I

    iget v10, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotoPadding:I

    add-int/2addr v10, v6

    mul-int/2addr v10, v5

    add-int/2addr v9, v10

    iput v9, p0, Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I

    .line 674
    .end local v2    # "leadPhotoHeight":I
    .end local v3    # "leadPhotoWidth":I
    .end local v5    # "numSecondaryRows":I
    .end local v6    # "secondaryPhotoHeight":I
    .end local v7    # "secondaryPhotoWidth":I
    :cond_4c
    const/high16 v9, -0x80000000

    if-eq v1, v9, :cond_54

    const/high16 v9, 0x40000000

    if-ne v1, v9, :cond_5b

    .line 675
    :cond_54
    invoke-virtual {p0, v8, v0}, Lcom/airbnb/android/views/PhotoRearranger;->setMeasuredDimension(II)V

    .line 680
    :goto_57
    invoke-direct {p0}, Lcom/airbnb/android/views/PhotoRearranger;->recalculateAllBitmapPositions()V

    .line 681
    return-void

    .line 677
    :cond_5b
    iget v9, p0, Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I

    invoke-virtual {p0, v8, v9}, Lcom/airbnb/android/views/PhotoRearranger;->setMeasuredDimension(II)V

    goto :goto_57
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1096
    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    .line 1097
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "super_saved"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1099
    const-string/jumbo v2, "active_bitmap_index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1100
    .local v0, "activeIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_20

    .line 1101
    const-string/jumbo v2, "previous_bitmap_index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    .line 1103
    :cond_20
    const-string/jumbo v2, "previous_bitmap_index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPrevBitmapIndex:I

    .line 1104
    const-string/jumbo v2, "pending_bitmap_count"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingCount:I

    .line 1105
    const-string/jumbo v2, "is_multi_select"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mInMultiSelectMode:Z

    .line 1106
    new-instance v3, Ljava/util/HashSet;

    const-string/jumbo v2, "selected_photos"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSelectedPhotos:Ljava/util/HashSet;

    .line 1108
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 1083
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1084
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1085
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "super_saved"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1086
    const-string/jumbo v2, "active_bitmap_index"

    iget v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1087
    const-string/jumbo v2, "previous_bitmap_index"

    iget v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPrevBitmapIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1088
    const-string/jumbo v2, "pending_bitmap_count"

    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1089
    const-string/jumbo v2, "is_multi_select"

    iget-boolean v3, p0, Lcom/airbnb/android/views/PhotoRearranger;->mInMultiSelectMode:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1090
    const-string/jumbo v2, "selected_photos"

    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getSelectedPhotoIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1091
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 643
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 645
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/PhotoRearranger;->calcLeadPhotoWidth(I)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLeadPhotoWidth:I

    .line 646
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLeadPhotoWidth:I

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/PhotoRearranger;->calcPhotoHeight(I)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLeadPhotoHeight:I

    .line 648
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLeadPhotoWidth:I

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/PhotoRearranger;->calcSecondaryPhotoWidth(I)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSecondaryPhotoWidth:I

    .line 649
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSecondaryPhotoWidth:I

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/PhotoRearranger;->calcPhotoHeight(I)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSecondaryPhotoHeight:I

    .line 650
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    .line 798
    .local v10, "index":I
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActivePointerId:I

    if-ne v0, v1, :cond_19b

    .line 799
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_af

    .line 800
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/airbnb/android/views/PhotoRearranger;->findIndexForScreenPos(IIZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4c

    const/4 v8, 0x1

    .line 802
    .local v8, "deletion":Z
    :goto_26
    if-eqz v8, :cond_4e

    .line 803
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mDragAndDropListener:Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;

    if-eqz v0, :cond_3f

    .line 804
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mDragAndDropListener:Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;

    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v0}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;->onDroppedToRemove(J)V

    .line 824
    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mCurrentEdgeScrollSpeed:I

    .line 826
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    .line 882
    .end local v8    # "deletion":Z
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 800
    :cond_4c
    const/4 v8, 0x0

    goto :goto_26

    .line 807
    .restart local v8    # "deletion":Z
    :cond_4e
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/views/PhotoRearranger;->findScreenSpaceForIndex(IZ)Landroid/graphics/Rect;

    move-result-object v11

    .line 808
    .local v11, "screenSpace":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v0, v11}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->setScreenSpace(Landroid/graphics/Rect;)V

    .line 809
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v0, v11}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->endSelection(Landroid/graphics/Rect;)V

    .line 811
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    if-nez v0, :cond_96

    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I

    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_96

    .line 813
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v4

    neg-int v4, v4

    const/16 v5, 0xfa

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 816
    :cond_96
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mDragAndDropListener:Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;

    if-eqz v0, :cond_a6

    .line 817
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mDragAndDropListener:Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;

    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    iget v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPrevBitmapIndex:I

    if-eq v0, v2, :cond_ad

    const/4 v0, 0x1

    :goto_a3
    invoke-interface {v1, v0}, Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;->onDrop(Z)V

    .line 820
    :cond_a6
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActivePointerId:I

    .line 821
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    goto :goto_3f

    .line 817
    :cond_ad
    const/4 v0, 0x0

    goto :goto_a3

    .line 827
    .end local v8    # "deletion":Z
    .end local v11    # "screenSpace":Landroid/graphics/Rect;
    :cond_af
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_45

    .line 828
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v12, v0

    .line 829
    .local v12, "x":I
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v13, v0

    .line 831
    .local v13, "y":I
    const/4 v0, 0x1

    invoke-direct {p0, v12, v13, v0}, Lcom/airbnb/android/views/PhotoRearranger;->findIndexForScreenPos(IIZ)I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 832
    .local v7, "bitmapIndex":I
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    if-ne v7, v0, :cond_e2

    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_157

    iget-boolean v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapInRemovalArea:Z

    if-eqz v0, :cond_157

    :cond_e2
    const/4 v0, -0x1

    if-ne v7, v0, :cond_e9

    iget-boolean v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapInRemovalArea:Z

    if-nez v0, :cond_157

    .line 834
    :cond_e9
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    .line 836
    .local v6, "active":Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;
    const/4 v0, -0x1

    if-ne v7, v0, :cond_133

    .line 837
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapInRemovalArea:Z

    .line 846
    :goto_108
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_109
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_140

    .line 847
    const/4 v0, 0x0

    invoke-direct {p0, v9, v0}, Lcom/airbnb/android/views/PhotoRearranger;->findScreenSpaceForIndex(IZ)Landroid/graphics/Rect;

    move-result-object v11

    .line 848
    .restart local v11    # "screenSpace":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v0, v11}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->startScale(Landroid/graphics/Rect;)V

    .line 850
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    if-eq v9, v0, :cond_130

    .line 851
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v0, v11}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->moveTo(Landroid/graphics/Rect;)V

    .line 846
    :cond_130
    add-int/lit8 v9, v9, 0x1

    goto :goto_109

    .line 841
    .end local v9    # "i":I
    .end local v11    # "screenSpace":Landroid/graphics/Rect;
    :cond_133
    iput v7, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    .line 842
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapInRemovalArea:Z

    goto :goto_108

    .line 855
    .restart local v9    # "i":I
    :cond_140
    iget-boolean v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapInRemovalArea:Z

    if-eqz v0, :cond_157

    .line 858
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/airbnb/android/views/PhotoRearranger;->findScreenSpaceForIndex(IZ)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->startScale(Landroid/graphics/Rect;)V

    .line 862
    .end local v6    # "active":Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;
    .end local v9    # "i":I
    :cond_157
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLastMoveX:I

    sub-int v1, v12, v1

    iget v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLastMoveY:I

    sub-int v2, v13, v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->addDragDelta(II)V

    .line 864
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mEdgeScrollThreshold:I

    if-ge v13, v0, :cond_181

    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaHeight:I

    if-le v13, v0, :cond_181

    .line 865
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mEdgeScrollSpeed:I

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mCurrentEdgeScrollSpeed:I

    .line 872
    :goto_178
    iput v12, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLastMoveX:I

    .line 873
    iput v13, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLastMoveY:I

    .line 874
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    goto/16 :goto_45

    .line 866
    :cond_181
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mEdgeScrollThreshold:I

    iget v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaHeight:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-le v13, v0, :cond_197

    .line 867
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mEdgeScrollSpeed:I

    neg-int v0, v0

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mCurrentEdgeScrollSpeed:I

    goto :goto_178

    .line 869
    :cond_197
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mCurrentEdgeScrollSpeed:I

    goto :goto_178

    .line 876
    .end local v7    # "bitmapIndex":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_19b
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_45

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_45

    .line 877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v13, v0

    .line 878
    .restart local v13    # "y":I
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLastMoveY:I

    sub-int v0, v13, v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/PhotoRearranger;->scroll(I)I

    .line 879
    iput v13, p0, Lcom/airbnb/android/views/PhotoRearranger;->mLastMoveY:I

    goto/16 :goto_45
.end method

.method public removePendingPhoto(I)V
    .registers 4
    .param p1, "count"    # I

    .prologue
    .line 1065
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_13

    .line 1066
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1067
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 1065
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1073
    :cond_13
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    .line 1074
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->requestLayout()V

    .line 1075
    return-void
.end method

.method public removeSelectedPhoto()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 958
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 960
    iput v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActivePointerId:I

    .line 961
    iput v2, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    .line 963
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    .line 964
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->requestLayout()V

    .line 965
    return-void
.end method

.method public resetSelectedPhoto()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 969
    iget-object v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    iget v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    .line 970
    .local v0, "active":Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;
    new-instance v1, Landroid/graphics/Rect;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->access$2500(Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 971
    .local v1, "currentRect":Landroid/graphics/Rect;
    # getter for: Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetX:I
    invoke-static {v0}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->access$2600(Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;)I

    move-result v5

    # getter for: Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetY:I
    invoke-static {v0}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->access$2700(Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 973
    iget v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPrevBitmapIndex:I

    invoke-direct {p0, v5, v8}, Lcom/airbnb/android/views/PhotoRearranger;->findScreenSpaceForIndex(IZ)Landroid/graphics/Rect;

    move-result-object v4

    .line 975
    .local v4, "targetRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->setScreenSpace(Landroid/graphics/Rect;)V

    .line 976
    invoke-virtual {v0, v4}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->endSelection(Landroid/graphics/Rect;)V

    .line 978
    iget-object v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    iget v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPrevBitmapIndex:I

    invoke-virtual {v5, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 980
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    iget-object v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5d

    .line 981
    invoke-direct {p0, v2, v8}, Lcom/airbnb/android/views/PhotoRearranger;->findScreenSpaceForIndex(IZ)Landroid/graphics/Rect;

    move-result-object v3

    .line 982
    .local v3, "screenSpace":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v5, v3}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->startScale(Landroid/graphics/Rect;)V

    .line 984
    iget v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPrevBitmapIndex:I

    if-eq v2, v5, :cond_5a

    .line 985
    iget-object v5, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v5, v3}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->moveTo(Landroid/graphics/Rect;)V

    .line 980
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 989
    .end local v3    # "screenSpace":Landroid/graphics/Rect;
    :cond_5d
    iput v7, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActivePointerId:I

    .line 990
    iput v7, p0, Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I

    .line 992
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    .line 993
    return-void
.end method

.method public setDragAndDropListener(Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mDragAndDropListener:Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;

    .line 594
    return-void
.end method

.method public setMultiSelectListener(Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mMultiSelectListener:Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;

    .line 598
    return-void
.end method

.method public setPhotoable(Lcom/airbnb/android/interfaces/Photoable;)V
    .registers 12
    .param p1, "photoable"    # Lcom/airbnb/android/interfaces/Photoable;

    .prologue
    .line 606
    invoke-interface {p1}, Lcom/airbnb/android/interfaces/Photoable;->getPhotos()Ljava/util/List;

    move-result-object v5

    .line 607
    .local v5, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 610
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 611
    .local v0, "captions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_7a

    .line 612
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Photo;

    .line 613
    .local v4, "photo":Lcom/airbnb/android/models/Photo;
    iget-object v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mKnownIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Photo;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 614
    iget-object v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3a

    .line 615
    iget-object v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPendingBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 617
    :cond_3a
    iget-object v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    new-instance v7, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    iget-object v8, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/airbnb/android/views/PhotoRearranger;->findScreenSpaceForIndex(IZ)Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v7, p0, v8, v4}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;-><init>(Lcom/airbnb/android/views/PhotoRearranger;Landroid/graphics/Rect;Lcom/airbnb/android/models/Photo;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mKnownIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Photo;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_5c
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Photo;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Photo;->getCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 627
    .end local v4    # "photo":Lcom/airbnb/android/models/Photo;
    :cond_7a
    iget-object v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_80
    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    .line 628
    .local v3, "mb":Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;
    invoke-virtual {v3}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->getPhoto()Lcom/airbnb/android/models/Photo;

    move-result-object v7

    invoke-virtual {v3}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/airbnb/android/models/Photo;->setCaption(Ljava/lang/String;)V

    .line 630
    iget-object v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSelectedPhotos:Ljava/util/HashSet;

    if-eqz v6, :cond_80

    iget-object v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSelectedPhotos:Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 631
    invoke-virtual {v3}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->toggleSelection()V

    goto :goto_80

    .line 635
    .end local v3    # "mb":Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;
    :cond_b9
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSelectedPhotos:Ljava/util/HashSet;

    .line 637
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    .line 638
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->requestLayout()V

    .line 639
    return-void
.end method

.method public setRemovalAreaHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 696
    iput p1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mRemovalAreaHeight:I

    .line 697
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    .line 698
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->requestLayout()V

    .line 699
    return-void
.end method

.method public setSingleSelectListener(Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/airbnb/android/views/PhotoRearranger;->mSingleSelectListener:Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;

    .line 602
    return-void
.end method

.method public startMultiSelect()V
    .registers 2

    .prologue
    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/PhotoRearranger;->mInMultiSelectMode:Z

    .line 997
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    .line 998
    return-void
.end method
