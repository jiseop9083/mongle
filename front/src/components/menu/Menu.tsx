import { cn } from '@/util/cn';
import style from '@/components/menu/menu.module.css';
import { useViewStore } from '@/store/viewStore';
import { useConfigStore } from '@/store/configStore';
import { PenColorSelect } from '@/components/select/PenColorSelect';
import { ThicknessSelect } from '@/components/select/ThicknessSelect';

export const Menu = () => {
    const { canvasView, setCanvasView } = useViewStore((state) => state);
    const { setPenThickness } = useConfigStore((state) => state);

    const resizeView = (intensity: number) => {
        setCanvasView({
            ...canvasView,
            pos: {
                left: canvasView.pos.left + (canvasView.pos.width * intensity) / 200,
                top: canvasView.pos.top + (canvasView.pos.height * intensity) / 200,
                width: (canvasView.pos.width * (100 - intensity)) / 100,
                height: (canvasView.pos.height * (100 - intensity)) / 100,
            },
        });
    };
    const moveView = (intensityX: number, intensityY: number) => {
        setCanvasView({
            ...canvasView,
            pos: {
                ...canvasView.pos,
                left: canvasView.pos.left + (canvasView.pos.width * intensityX) / 100,
                top: canvasView.pos.top + (canvasView.pos.height * intensityY) / 100,
            },
        });
    };
    return (
        <div className={cn(style.default)}>
            <div className={cn(style.config)}>
                <PenColorSelect />
                <ThicknessSelect />
            </div>
            <div className={cn(style.config)}>
                <button className={cn(style.green)} onClick={() => moveView(-10, 0)}>
                    왼쪽 이동
                </button>
                <button className={cn(style.green)} onClick={() => moveView(10, 0)}>
                    오른쪽 이동
                </button>
                <button className={cn(style.green)} onClick={() => moveView(0, -10)}>
                    위쪽 이동
                </button>
                <button className={cn(style.green)} onClick={() => moveView(0, 10)}>
                    아래쪽 이동
                </button>
                <button className={cn(style.green)} onClick={() => resizeView(-20)}>
                    축소
                </button>
                <button className={cn(style.green)} onClick={() => resizeView(20)}>
                    확대
                </button>
            </div>
        </div>
    );
};
